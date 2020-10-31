import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsFunctionInvocationNamedParameters.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsFunctionInvocationPositionalParameters.dart';
import 'package:meta/meta.dart';

part 'tsFunctionInvocation.freezed.dart';
part 'tsFunctionInvocation.g.dart';

@freezed
abstract class TsFunctionInvocation with _$TsFunctionInvocation {
  factory TsFunctionInvocation({
    @required
        TsFunctionInvocationPositionalParameters
            tsFunctionInvocationPositionalParameters,
    @required
        List<TsFunctionInvocationNamedParameters>
            tsFunctionInvocationNamedParameters,
  }) = _$Data;

  factory TsFunctionInvocation.fromJson(Map<String, dynamic> json) =>
      _$TsFunctionInvocationFromJson(json);
}
