import 'package:tekartik_travis_ci_flutter/setup.dart';

Future main() async {
  await CiFlutterSetup(channel: travisDartChannel, directory: ciFlutterTop)
      .upgrade();
}
