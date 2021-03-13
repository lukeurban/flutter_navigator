import 'package:flutter/material.dart';
import 'package:navigator/app/modules/module_b/screens/module_b_tmp2.dart';

class ModuleBTmp1 extends StatelessWidget {
  static String route = '/B/tmp1';
  const ModuleBTmp1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('ModuleBTmp1'),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  ModuleBTmp2.route,
                );
              },
              child: Text('Go to ModuleBTmp2'),
            )
          ],
        ),
      ),
    );
  }
}
