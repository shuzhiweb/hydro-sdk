import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/frame.dart';
import 'package:meta/meta.dart';

void testset(
    {@required Frame frame,
    @required int A,
    @required int B,
    @required int C}) {
  if (!Context.truthy(frame.GR(B)) == (C != 0)) {
    frame.programCounter++;
  } else {
    frame.SR(A, frame.GR(B));
    frame.programCounter += frame.getNextJump() + 1;
  }
}