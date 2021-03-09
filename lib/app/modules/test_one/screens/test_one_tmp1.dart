import 'package:flutter/material.dart';
import 'package:navigator/app/modules/test_one/screens/test_one_tmp2.dart';

class TestOneTmp1 extends StatelessWidget {
  static String route = '/test-one/tmp1';
  const TestOneTmp1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('TestOneTmp1'),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  TestOneTmp2.route,
                );
              },
              child: Text('Go to TestOneTmp2'),
            )
          ],
        ),
      ),
    );
  }
}
