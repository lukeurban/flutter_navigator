import 'package:flutter/material.dart';
import 'package:navigator/app/app.dart';
import 'package:navigator/app/core/navigation/widgets/module_navigator.dart';
import 'package:navigator/app/modules/module_b/screens/module_b_tmp1.dart';

class ModuleATmp2 extends StatelessWidget {
  static String route = '/A/tmp2';
  const ModuleATmp2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          children: [
            Text('ModuleATmp2'),
            RaisedButton(
              onPressed: () {
                ModuleNavigator.of(context).pushModuleAndRouteNamed(
                  AppModules.moduleB,
                  ModuleBTmp1.route,
                );
              },
              child: Text('Go to ModuleBTmp1'),
            )
          ],
        ),
      ),
    );
  }
}
