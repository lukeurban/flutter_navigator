import 'package:flutter/material.dart';
import 'package:navigator/app/app.dart';
import 'package:navigator/app/core/navigation/widgets/module_navigator.dart';
import 'package:navigator/app/modules/module_c/screens/module_c_tmp1.dart';

class ModuleBTmp2 extends StatelessWidget {
  static String route = '/B/tmp2';
  const ModuleBTmp2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('ModuleBTmp2'),
            RaisedButton(
              onPressed: () {
                ModuleNavigator.of(context).pushModuleAndRouteNamed(
                  AppModules.moduleC,
                  ModuleCTmp1.route,
                );
              },
              child: Text('Go to ModuleCTmp1'),
            )
          ],
        ),
      ),
    );
  }
}
