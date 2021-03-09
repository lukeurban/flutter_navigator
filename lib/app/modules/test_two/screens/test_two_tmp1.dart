import 'package:flutter/material.dart';
import 'package:navigator/app/modules/test_two/screens/test_two_tmp2.dart';

class TestTwoTmp1 extends StatelessWidget {
  static String route = '/test-two/tmp1';
  const TestTwoTmp1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('TestTwoTmp1'),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  TestTwoTmp2.route,
                );
              },
              child: Text('Go to TestTwoTmp2'),
            )
          ],
        ),
      ),
    );
  }
}
