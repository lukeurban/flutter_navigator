import 'package:flutter/material.dart';
import 'package:navigator/app/app.dart';
import 'package:navigator/app/core/navigation/widgets/module_navigator.dart';
import 'package:navigator/app/modules/test_one/screens/test_one_tmp1.dart';

class MainTmp2 extends StatelessWidget {
  static String route = '/main/tmp2';
  const MainTmp2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('MainTmp2'),
            RaisedButton(
              onPressed: () {
                ModuleNavigator.of(context).pushModuleAndRouteNamed(
                  AppModules.testOne,
                  TestOneTmp1.route,
                );
              },
              child: Text('Go to TestOneTmp1'),
            )
          ],
        ),
      ),
    );
  }
}
