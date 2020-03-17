import 'package:flua/luastate.dart';
import 'package:flua/reassembler/hashInstructionBlock.dart';
import 'package:flua/reassembler/hashPrototype.dart';
import 'package:flua/reassembler/isRelocationCandidate.dart';
import 'package:flua/vm/context.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('', () async {
    var state1 = LuaState();

    List<String> outLines = [];

    state1.context.env["print"] = (List<dynamic> args) {
      outLines
          .add(args.map((a) => Context.luaToString(a).toString()).join("\t"));
    };

    var state2 = LuaState();

    state2.context.env["print"] = (List<dynamic> args) {
      outLines
          .add(args.map((a) => Context.luaToString(a).toString()).join("\t"));
    };

    var state3 = LuaState();

    state3.context.env["print"] = (List<dynamic> args) {
      outLines
          .add(args.map((a) => Context.luaToString(a).toString()).join("\t"));
    };

    LuaFunctionImpl res1 = await state1.loadFile("hot/simple1.lc");

    var global1 = res1.closure.proto.prototypes[0];
    var local1 = res1.closure.proto.prototypes[1];

    LuaFunctionImpl res2 = await state2.loadFile("hot/simple2.lc");

    var global2 = res2.closure.proto.prototypes[0];
    var local2 = res2.closure.proto.prototypes[1];

    LuaFunctionImpl res3 = await state2.loadFile("hot/simple3.lc");

    var global3 = res3.closure.proto.prototypes[1];
    var local3 = res3.closure.proto.prototypes[2];

    //All 4 functions should have identical instructions
    expect(
        hashInstructionBlock(global1.code), hashInstructionBlock(local1.code));
    expect(
        hashInstructionBlock(global2.code), hashInstructionBlock(local2.code));
    expect(
        hashInstructionBlock(global1.code), hashInstructionBlock(global2.code));
    expect(
        hashInstructionBlock(global1.code), hashInstructionBlock(local2.code));
    expect(
        hashInstructionBlock(local1.code), hashInstructionBlock(local3.code));
    expect(
        hashInstructionBlock(global3.code), hashInstructionBlock(global3.code));

    expect(
        hashInstructionBlock(local1.code), hashInstructionBlock(local1.code));
    expect(
        hashInstructionBlock(global2.code), hashInstructionBlock(global2.code));
    expect(
        hashInstructionBlock(local3.code), hashInstructionBlock(local3.code));
    expect(
        hashInstructionBlock(global3.code), hashInstructionBlock(global3.code));

    expect(hashPrototype(global1), hashPrototype(global1));
    expect(hashPrototype(local1), hashPrototype(local1));

    expect(hashPrototype(global2), hashPrototype(global2));
    expect(hashPrototype(local2), hashPrototype(local2));
    expect(hashPrototype(local3), hashPrototype(local3));

    //Prototypes should differ due to different constants
    expect(hashPrototype(global1), isNot(hashPrototype(local1)));
    expect(hashPrototype(global2), isNot(hashPrototype(local2)));
    expect(hashPrototype(global1), isNot(hashPrototype(global2)));
    expect(hashPrototype(local1), isNot(hashPrototype(local2)));
    expect(hashPrototype(global2), isNot(hashPrototype(local1)));
    expect(hashPrototype(global1), isNot(hashPrototype(local2)));
    expect(hashPrototype(global1), isNot(hashPrototype(local3)));
    expect(hashPrototype(local1), isNot(hashPrototype(local3)));
    expect(hashPrototype(global1), isNot(hashPrototype(global3)));

    expect(
        isRelocationCandidate(
            destination: global1,
            source: global1,
            destinationHashWithoutSourceInformation:
                hashPrototype(global1, includeSourceLocations: false),
            sourceHash: hashPrototype(global1, includeSourceLocations: false)),
        false);
    expect(
        isRelocationCandidate(
            destination: local1,
            source: local1,
            destinationHashWithoutSourceInformation:
                hashPrototype(local1, includeSourceLocations: false),
            sourceHash: hashPrototype(local1, includeSourceLocations: false)),
        false);

    expect(
        isRelocationCandidate(
            destination: global1,
            source: global3,
            destinationHashWithoutSourceInformation:
                hashPrototype(global1, includeSourceLocations: false),
            sourceHash: hashPrototype(global3, includeSourceLocations: false)),
        false);
    expect(
        isRelocationCandidate(
            destination: global3,
            source: global1,
            destinationHashWithoutSourceInformation:
                hashPrototype(global3, includeSourceLocations: false),
            sourceHash: hashPrototype(global1, includeSourceLocations: false)),
        false);
    expect(
        isRelocationCandidate(
            destination: global2,
            source: global3,
            destinationHashWithoutSourceInformation:
                hashPrototype(global2, includeSourceLocations: false),
            sourceHash: hashPrototype(global3, includeSourceLocations: false)),
        false);
    expect(
        isRelocationCandidate(
            destination: global2,
            source: global1,
            destinationHashWithoutSourceInformation:
                hashPrototype(global2, includeSourceLocations: false),
            sourceHash: hashPrototype(global1, includeSourceLocations: false)),
        false);

    expect(
        isRelocationCandidate(
            destination: local1,
            source: local3,
            destinationHashWithoutSourceInformation:
                hashPrototype(local1, includeSourceLocations: false),
            sourceHash: hashPrototype(local3, includeSourceLocations: false)),
        false);
    expect(
        isRelocationCandidate(
            destination: local3,
            source: local1,
            destinationHashWithoutSourceInformation:
                hashPrototype(local3, includeSourceLocations: false),
            sourceHash: hashPrototype(local1, includeSourceLocations: false)),
        false);
    expect(
        isRelocationCandidate(
            destination: local2,
            source: local3,
            destinationHashWithoutSourceInformation:
                hashPrototype(local2, includeSourceLocations: false),
            sourceHash: hashPrototype(local3, includeSourceLocations: false)),
        false);
    expect(
        isRelocationCandidate(
            destination: local2,
            source: local1,
            destinationHashWithoutSourceInformation:
                hashPrototype(local2, includeSourceLocations: false),
            sourceHash: hashPrototype(local1, includeSourceLocations: false)),
        false);
  });
}