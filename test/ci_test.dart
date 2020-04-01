import 'dart:io';

import 'package:path/path.dart';
import 'package:process_run/shell_run.dart';
import 'package:test/test.dart';

main() {
  group('ci', () {
    /*
    test('env', () async {
      await env.main();
    });
    test('install', () async {
      await install.main();
    });
     */
    test('create', () async {
      var dir = join('.dart_tool', 'travis_ci_flutter', 'test', 'project');
      try {
        await Directory(dir).delete();
      } catch (_) {}
      try {
        await Directory(dirname(dir)).create();
      } catch (_) {}

      await run('flutter create $dir');
      var shell = Shell(workingDirectory: dir);
      await shell.run('flutter packages get');
    });
  });
}
