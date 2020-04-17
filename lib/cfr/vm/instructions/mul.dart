import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/frame.dart';
import 'package:meta/meta.dart';

void mul(
    {@required Frame frame,
    @required int A,
    @required int B,
    @required int C}) {
  frame.SR(
      A,
      Context.attemptArithmetic(
          frame.RK(B), frame.RK(C), "__mul", Context.mul));
}