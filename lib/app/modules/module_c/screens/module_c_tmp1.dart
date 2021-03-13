import 'package:flutter/material.dart';
import 'package:navigator/app/modules/module_c/screens/module_c_tmp2.dart';

class ModuleCTmp1 extends StatelessWidget {
  static String route = '/C/tmp1';
  const ModuleCTmp1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('ModuleCTmp1'),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  ModuleCTmp2.route,
                );
              },
              child: Text('Go to ModuleCTmp2'),
            )
          ],
        ),
      ),
    );
  }
}
