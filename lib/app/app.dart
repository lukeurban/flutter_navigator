import 'package:flutter/material.dart';
import 'package:navigator/app/core/navigation/widgets/module_navigator.dart';
import 'package:navigator/app/modules/main/main_module.dart';
import 'package:navigator/app/modules/test_one/test_one_module.dart';
import 'package:navigator/app/modules/test_two/test_two_module.dart';

class AppModules {
  static int main = 0;
  static int testOne = 1;
  static int testTwo = 2;
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ModuleNavigator(
        intialModule: AppModules.main,
        modules: {
          AppModules.main: MainModule(),
          AppModules.testOne: TestOneModule(),
          AppModules.testTwo: TestTwoModule(),
        },
      ),
    );
  }
}
