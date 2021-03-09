import 'package:flutter/material.dart';
import 'package:navigator/app/modules/main/screens/main_tmp2.dart';

class MainTmp1 extends StatelessWidget {
  static String route = '/main/tmp1';
  const MainTmp1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Text('MainTmp1'),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(
                MainTmp2.route,
              );
            },
            child: Text('Go to MainTmp2'),
          )
        ],
      ),
    );
  }
}
