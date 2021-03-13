import 'package:flutter/material.dart';
import 'package:navigator/app/core/navigation/widgets/module_navigator.dart';
import 'package:navigator/app/modules/module_a/module_a.dart';
import 'package:navigator/app/modules/module_b/module_b.dart';
import 'package:navigator/app/modules/module_c/module_c.dart';

class AppModules {
  static int moduleA = 0;
  static int moduleB = 1;
  static int moduleC = 2;
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
        intialModule: AppModules.moduleA,
        modules: {
          AppModules.moduleA: ModuleA(),
          AppModules.moduleB: ModuleB(),
          AppModules.moduleC: ModuleC(),
        },
      ),
    );
  }
}
