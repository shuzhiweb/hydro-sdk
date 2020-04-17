import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/frame.dart';
import 'package:meta/meta.dart';

void len({@required Frame frame, @required int A, @required int B}) {
  frame.SR(A, Context.getLength(frame.GR(B)));
}