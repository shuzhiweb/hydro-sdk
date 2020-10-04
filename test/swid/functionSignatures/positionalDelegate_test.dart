import 'package:flutter_test/flutter_test.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformFunctionTypeToTs.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    expect(
        //num? (Widget Function() foo)
        transformFunctionTypeToTs(
            swidFunctionType: SwidFunctionType(
              namedDefaults: {},
                swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
                name: "",
                originalPackagePath: "",
                normalParameterNames: ["foo"],
                normalParameterTypes: [
                  SwidFunctionType(
                    namedDefaults: {},
                      swidDeclarationModifiers:
                          SwidDeclarationModifiers.empty(),
                      name: "",
                      nullabilitySuffix: SwidNullabilitySuffix.star,
                      originalPackagePath: "",
                      namedParameterTypes: {},
                      normalParameterNames: [],
                      normalParameterTypes: [],
                      optionalParameterNames: [],
                      optionalParameterTypes: [],
                      returnType: SwidType(
                        name: "Widget",
                        originalPackagePath: "",
                        nullabilitySuffix: SwidNullabilitySuffix.star,
                      ))
                ],
                optionalParameterNames: [],
                optionalParameterTypes: [],
                namedParameterTypes: {},
                nullabilitySuffix: SwidNullabilitySuffix.star,
                returnType: SwidType(
                  name: "num",
                  originalPackagePath: "dart:core",
                  nullabilitySuffix: SwidNullabilitySuffix.question,
                ))),
        "(foo : () => Widget) => num | undefined");
  });
}