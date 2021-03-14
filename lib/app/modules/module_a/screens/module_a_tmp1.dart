import 'package:flutter/material.dart';
import 'package:navigator/app/modules/module_a/screens/module_a_tmp2.dart';

class ModuleATmp1 extends StatelessWidget {
  static String route = '/A/tmp1';
  const ModuleATmp1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        children: [
          Center(
            child: Text('ModuleATmp1'),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(
                ModuleATmp2.route,
              );
            },
            child: Text('Go to ModuleATmp2'),
          )
        ],
      ),
    );
  }
}
