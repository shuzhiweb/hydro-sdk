import * as fs from "fs";

import * as chalk from "chalk";
import * as ts from "typescript";

import { BuildOptions, InputLanguage } from "../buildOptions";
import { configHash } from "../configHash";

import { setupArtifactDirectories } from "../setupArtifactDirectories";
import { compileByteCodeAndWriteHash } from "../compileByteCodeAndWriteHash";
import { buildBundleInfo } from "../bundle/buildBundleInfo";
import { bundle } from "../bundle/bundle";

export async function transpileTS(config: BuildOptions & { inputLanguage: InputLanguage.typescript }): Promise<void> {
    const buildHash = configHash(config);
    console.log(`Build ${chalk.yellow(buildHash)}`);

    const { outFileHash, outFile, tempFile, tempDir } = setupArtifactDirectories(buildHash, config);

    const bundleInfo = await buildBundleInfo(config);

    if (bundleInfo.diagnostics && bundleInfo.diagnostics.length) {
        bundleInfo.diagnostics.forEach((x) => {

            if (x.file) {
                const { line, character } = x.file.getLineAndCharacterOfPosition(x.start!);
                const message = ts.flattenDiagnosticMessageText(x.messageText, "\n");
                const fileNameMsg = chalk.blue(x.file.fileName);
                const lineMsg = chalk.yellow(line + 1);
                const characterMsg = chalk.yellow(character + 1);
                const diagMsg = chalk.red(message);

                console.log(`${fileNameMsg}:${lineMsg}:${characterMsg} - ${diagMsg}`);
            } else {
                const diagMsg = chalk.red(ts.flattenDiagnosticMessageText(x.messageText, "\n"));
                console.log(diagMsg);
            }
        });

        return;
    }

    const bundleResult = bundle(bundleInfo);

    fs.writeFileSync(`${tempDir}/${config.modName}`, bundleResult.bundle);
    fs.writeFileSync(`${tempDir}/${config.modName}.symbols`, JSON.stringify(bundleResult.debugSymbols));

    compileByteCodeAndWriteHash(outFile, outFileHash, tempFile, config);

    console.log(`${chalk.blue(config.entry)} ----> ${chalk.yellow(outFile)}`);
    console.log(`${chalk.blue(config.entry)} ----> ${chalk.yellow(outFileHash)}`);
}