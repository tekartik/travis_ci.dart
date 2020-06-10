// Since dart 2.9, executables are no longer precompile, force it here
// by running the command once
import 'package:process_run/shell_run.dart';

Future init() async {
  await run('pub run tekartik_travis_ci_flutter:env -h', verbose: false);
}
