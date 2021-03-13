import 'package:flutter/material.dart';
import 'package:navigator/app/core/navigation/module.dart';
import 'package:navigator/app/modules/module_b/screens/module_b_tmp1.dart';
import 'package:navigator/app/modules/module_b/screens/module_b_tmp2.dart';

class ModuleB extends Module {
  ModuleB()
      : super(
          name: 'ModuleB',
          initialRoute: ModuleBTmp1.route,
          routes: {
            ModuleBTmp1.route: (BuildContext context) => ModuleBTmp1(),
            ModuleBTmp2.route: (BuildContext context) => ModuleBTmp2(),
          },
        );
}
