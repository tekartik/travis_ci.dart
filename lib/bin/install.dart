import 'dart:io';

import 'package:tekartik_travis_ci_flutter/src/setup.dart';

export 'package:tekartik_travis_ci_flutter/src/setup.dart'
    show
        install,
        runningOnTravis,
        travisDartVersion,
        travisFlutterTop,
        travisTempDir,
        travisCreateEnvFile;

Future main() async {
  // We use the dart version (stable, dev) as the channel
  var channel = travisDartChannel;
  var directory = ciFlutterTop;

  await install(channel: channel, directory: directory);

  var path = await travisCreateEnvFile();
  print('env_file: $path');
  print(await File(path).readAsString());
}
