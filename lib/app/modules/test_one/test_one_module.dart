import 'package:flutter/material.dart';
import 'package:navigator/app/core/navigation/module.dart';
import 'package:navigator/app/modules/test_one/screens/test_one_tmp1.dart';
import 'package:navigator/app/modules/test_one/screens/test_one_tmp2.dart';

class TestOneModule extends Module {
  TestOneModule()
      : super(
          name: 'TestOne',
          initialRoute: TestOneTmp1.route,
          routes: {
            TestOneTmp1.route: (BuildContext context) => TestOneTmp1(),
            TestOneTmp2.route: (BuildContext context) => TestOneTmp2(),
          },
        );
}
