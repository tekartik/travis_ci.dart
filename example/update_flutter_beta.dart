import 'package:tekartik_travis_ci_flutter/setup.dart';

Future main() async {
  await CiFlutterSetup(
          channel: 'beta', directory: '.dart_tool/travis_ci_flutter/test/beta')
      .install();
}
