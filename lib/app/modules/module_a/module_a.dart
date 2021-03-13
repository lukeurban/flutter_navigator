import 'package:flutter/material.dart';
import 'package:navigator/app/core/navigation/module.dart';
import 'package:navigator/app/modules/module_a/screens/module_a_tmp1.dart';
import 'package:navigator/app/modules/module_a/screens/module_a_tmp2.dart';

class ModuleA extends Module {
  ModuleA()
      : super(
          name: 'ModuleA',
          initialRoute: ModuleATmp1.route,
          routes: {
            ModuleATmp1.route: (BuildContext context) => ModuleATmp1(),
            ModuleATmp2.route: (BuildContext context) => ModuleATmp2(),
          },
        );
}
