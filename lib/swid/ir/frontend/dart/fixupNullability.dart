import 'package:hydro_sdk/swid/ir/frontend/dart/cloneSwidType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidNullabilitySuffix.dart';
import 'package:meta/meta.dart';

SwidClass fixupNullability({@required SwidClass swidClass}) =>
    swidClass.name == "IconData"
        ? SwidClass.clone(
            swidClass: swidClass,
            constructorType: SwidFunctionType.clone(
                swidFunctionType: swidClass.constructorType,
                namedParameterTypes: Map.fromEntries(swidClass
                    .constructorType.namedParameterTypes.entries
                    .map((x) => x.key == "fontPackage"
                        ? MapEntry(
                            x.key,
                            cloneSwidType(
                                swidType: x.value,
                                swidNullabilitySuffix:
                                    SwidNullabilitySuffix.question))
                        : MapEntry(x.key, x.value)))))
        : swidClass;
