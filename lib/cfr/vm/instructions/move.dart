import 'package:hydro_sdk/cfr/vm/frame.dart';
import 'package:meta/meta.dart';

void move({@required Frame frame, @required int A, @required int B}) {
  frame.SR(A, frame.GR(B));
}