import 'dart:io';

import 'package:args/args.dart';

import 'install.dart';

Future main(List<String> arguments) async {
  final parser = ArgParser(allowTrailingOptions: true);
  parser.addFlag('help', abbr: 'h', help: 'Usage help', negatable: false);
  parser.addFlag('verbose',
      abbr: 'v', help: 'Display content in stderr', negatable: false);
  final results = parser.parse(arguments);
  if (results['help'] as bool) {
    stderr.writeln(parser.usage);
    return;
  }
  final verbose = results['verbose'] as bool?;
  // We write the path to be sourced
  stdout.write(await travisCreateEnvFile(verbose: verbose));
}
