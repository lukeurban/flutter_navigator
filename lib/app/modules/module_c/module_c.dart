import 'package:flutter/material.dart';
import 'package:navigator/app/core/navigation/module.dart';
import 'package:navigator/app/modules/module_c/screens/module_C_tmp2.dart';
import 'package:navigator/app/modules/module_c/screens/module_c_tmp1.dart';

class ModuleC extends Module {
  ModuleC()
      : super(
          name: 'ModuleC',
          initialRoute: ModuleCTmp1.route,
          routes: {
            ModuleCTmp1.route: (BuildContext context) => ModuleCTmp1(),
            ModuleCTmp2.route: (BuildContext context) => ModuleCTmp2(),
            //if i have some common "module" i can add theese routes here <- depending on user flow
          },
        );
}
