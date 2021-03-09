import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageRoutes {
  static final materialPageRoute = <T>(RouteSettings settings, WidgetBuilder builder) =>
      MaterialPageRoute<T>(settings: settings, builder: builder);
  static final cupertinoPageRoute = <T>(RouteSettings settings, WidgetBuilder builder) =>
      CupertinoPageRoute<T>(settings: settings, builder: builder);
}
