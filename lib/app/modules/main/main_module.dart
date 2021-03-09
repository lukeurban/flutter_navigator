import 'package:flutter/material.dart';
import 'package:navigator/app/core/navigation/module.dart';
import 'package:navigator/app/modules/main/screens/main_tmp1.dart';
import 'package:navigator/app/modules/main/screens/main_tmp2.dart';

class MainModule extends Module {
  MainModule()
      : super(
          name: 'Main',
          initialRoute: MainTmp1.route,
          routes: {
            MainTmp1.route: (BuildContext context) => MainTmp1(),
            MainTmp2.route: (BuildContext context) => MainTmp2(),
          },
        );
}
