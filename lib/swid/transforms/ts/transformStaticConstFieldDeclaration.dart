import 'package:hydro_sdk/swid/ir/swidStaticConstFieldDeclaration.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformLiteralToTs.dart';
import 'package:meta/meta.dart';

String transformStaticConstFieldDeclaration(
        {@required
            SwidStaticConstFieldDeclaration staticConstFieldDeclaration}) =>
    "public static ${staticConstFieldDeclaration.name} = ${transformLiteralToTs(swidLiteral: staticConstFieldDeclaration.value)};";