import 'package:flutter/material.dart';

class Module {
  Module({
    @required this.name,
    @required this.initialRoute,
    @required this.routes,
  });
  final String name;
  final String initialRoute;
  final Map<String, WidgetBuilder> routes;

  Widget get icon {
    return Container();
  }
}
