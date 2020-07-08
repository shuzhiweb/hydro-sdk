import 'dart:io';

import 'package:hydro_sdk/cfr/buildProfile.dart';
import 'package:hydro_sdk/cfr/moduleDebugInfoRaw.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/hc.g.dart';
import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/runFromNetwork.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hydro_sdk/testMode.dart';

void main() {
  testWidgets('stateful hot reload', (WidgetTester tester) async {
    await tester.runAsync(() async {
      var testMode = getTestMode();
      expect(testMode, isNotNull);

      //If we're not running Typescript tests, the fixtures for this test weren't built
      if (testMode != TestMode.typescript) {
        return;
      }

      String hashPath = "assets/test/hot/stateful/counter1.ts.hc.sha256";
      String bytecodePath = "assets/test/hot/stateful/counter1.ts.hc";
      String symbolsPath = "assets/test/hot/stateful/counter1.ts.hc.symbols";

      HydroState state = HydroState();
      var closure = await state.loadBuffer(
          buffer: File(bytecodePath).readAsBytesSync(),
          name: bytecodePath,
          linkStatus: null,
          thunks: null);

      //This test doesn't make any sense if the fixtures were built in release mode.
      //Hot reload doesn't work in release mode.
      if (closure.closure.buildProfile == BuildProfile.mixed ||
          closure.closure.buildProfile == BuildProfile.release) {
        return;
      }

      WidgetsFlutterBinding.ensureInitialized();
      await tester.pumpWidget(RunFromNetwork(
        args: [],
        thunks: thunks,
        baseUrl: "http://127.0.0.1:3000/hot/stateful/counter.hc",
        downloadHash: (String uri) async {
          var file = File(hashPath);
          var res = file.readAsStringSync();
          return res;
        },
        downloadByteCodeImage: (String uri) async {
          var file = File(bytecodePath);
          var res = file.readAsBytesSync();
          return res;
        },
        downloadDebugInfo: (String uri) async {
          var file = File(symbolsPath);
          var res = file.readAsStringSync();
          return ModuleDebugInfoRaw(res);
        },
      ));

      await Future.delayed(Duration(seconds: 5));
      await tester.pump();
      expect(tester.takeException(), isNull);

      expect(find.byKey(Key("counter")), findsOneWidget);
      expect(find.byKey(Key("increment")), findsOneWidget);
      expect(find.text("You have pushed the button this many times"),
          findsOneWidget);

      expect(find.text("0"), findsOneWidget);
      await tester.tap(find.byKey(Key("increment")));
      await tester.pumpAndSettle();
      expect(find.text("1"), findsOneWidget);
      await tester.tap(find.byKey(Key("increment")));
      await tester.pumpAndSettle();
      expect(find.text("2"), findsOneWidget);

      hashPath =
          "assets/test/hot/stateful/statefulHotReloadStackTrace-1.ts.hc.sha256";
      bytecodePath =
          "assets/test/hot/stateful/statefulHotReloadStackTrace-1.ts.hc";
      symbolsPath =
          "assets/test/hot/stateful/statefulHotReloadStackTrace-1.ts.hc.symbols";

      await Future.delayed(Duration(seconds: 5));
      await tester.pump();
      expect(tester.takeException(), isNull);

      expect(find.byKey(Key("counter")), findsOneWidget);
      expect(find.byKey(Key("increment")), findsOneWidget);
      expect(find.text("You have pushed the button this many times"),
          findsOneWidget);
      expect(find.text("2"), findsOneWidget);

      await tester.tap(find.byKey(Key("increment")));
      await tester.pumpAndSettle();
      expect(find.text("2"), findsOneWidget);

      //new code should throw an exception when tapping add
      LuaError exception = tester.takeException();

      expect(exception, isNotNull);
      expect(exception.extractedSymbols[0].symbolName, "anonymous closure");
      expect(exception.extractedSymbols[0].originalFileName,
          "test/hot/stateful/statefulHotReloadStackTrace-1.ts");
      expect(exception.extractedSymbols[0].originalLineStart, 64);

      expect(exception.extractedSymbols[1].symbolName, "anonymous closure");
      expect(exception.extractedSymbols[1].originalFileName,
          "test/hot/stateful/statefulHotReloadStackTrace-1.ts");
      expect(exception.extractedSymbols[1].originalLineStart, 62);

      hashPath = "assets/test/hot/stateful/counter1.ts.hc.sha256";
      bytecodePath = "assets/test/hot/stateful/counter1.ts.hc";
      symbolsPath = "assets/test/hot/stateful/counter1.ts.hc.symbols";

      //switching back to old code should work
      await Future.delayed(Duration(seconds: 5));
      await tester.pump();
      expect(tester.takeException(), isNull);

      expect(find.byKey(Key("counter")), findsOneWidget);
      expect(find.byKey(Key("increment")), findsOneWidget);
      expect(find.text("You have pushed the button this many times"),
          findsOneWidget);
      expect(find.text("2"), findsOneWidget);
      //should be able to tap and increment counter without exceptions again
      await tester.tap(find.byKey(Key("increment")));
      expect(tester.takeException(), isNull);
      await tester.pumpAndSettle();
      expect(tester.takeException(), isNull);
      expect(find.text("3"), findsOneWidget);
    });
  });
}
