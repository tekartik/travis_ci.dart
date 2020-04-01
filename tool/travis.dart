import 'package:process_run/shell.dart';

Future main() async {
  var shell = Shell();

  await shell.run('''
    
flutter doctor
pub upgrade
pub run test
  
''');
}
