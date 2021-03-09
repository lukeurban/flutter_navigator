import 'package:flutter/material.dart';
import 'package:navigator/app/app.dart';
import 'package:navigator/app/core/navigation/widgets/module_navigator.dart';
import 'package:navigator/app/modules/test_two/screens/test_two_tmp1.dart';

class TestOneTmp2 extends StatelessWidget {
  static String route = '/test-one/tmp2';
  const TestOneTmp2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('TestOneTmp2'),
            RaisedButton(
              onPressed: () {
                ModuleNavigator.of(context).pushModuleAndRouteNamed(
                  AppModules.testTwo,
                  TestTwoTmp1.route,
                );
              },
              child: Text('Go to TestTwoTmp1'),
            )
          ],
        ),
      ),
    );
  }
}
