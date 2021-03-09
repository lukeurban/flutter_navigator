import 'package:flutter/material.dart';
import 'package:navigator/app/core/navigation/module.dart';
import 'package:navigator/app/modules/test_two/screens/test_two_tmp1.dart';
import 'package:navigator/app/modules/test_two/screens/test_two_tmp2.dart';

class TestTwoModule extends Module {
  TestTwoModule()
      : super(
          name: 'TestTwo',
          initialRoute: TestTwoTmp1.route,
          routes: {
            TestTwoTmp1.route: (BuildContext context) => TestTwoTmp1(),
            TestTwoTmp2.route: (BuildContext context) => TestTwoTmp2(),
            //if i have some common "module" i can add theese routes here <- depending on user flow
          },
        );
}
