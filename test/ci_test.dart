import 'package:tekartik_travis_ci_flutter/bin/env.dart' as env;
import 'package:tekartik_travis_ci_flutter/bin/install.dart' as install;
import 'package:test/test.dart';

main() {
  group('ci', () {
    test('env', () async {
      await env.main();
    });
    test('install', () async {
      await install.main();
    });
  });
}