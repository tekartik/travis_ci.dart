import 'package:tekartik_travis_ci_flutter/bin/install.dart';

Future main() async {
  await install(
      channel: 'master', directory: '.dart_tool/travis_ci_flutter/test/master');
}
