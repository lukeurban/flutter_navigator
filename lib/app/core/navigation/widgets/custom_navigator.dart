import 'package:flutter/material.dart';

class CustomNavigator extends StatefulWidget {
  const CustomNavigator({
    Key key,
    this.navigatorKey,
    this.routes,
    this.pageRoute,
    this.home,
    this.observers,
    this.initialRoute,
    this.onGenerateRoute,
  }) : super(key: key);
  final GlobalKey<NavigatorState> navigatorKey;

  final Map<String, WidgetBuilder> routes;
  final PageRouteFactory pageRoute;
  final Widget home;
  final List<RouteObserver> observers;
  final RouteFactory onGenerateRoute;
  final String initialRoute;

  @override
  _CustomNavigatorState createState() => _CustomNavigatorState();
}

class _CustomNavigatorState extends State<CustomNavigator> {
  HeroController _heroController;
  @override
  void initState() {
    super.initState();
    _heroController = HeroController(createRectTween: _createRectTween);
  }

  RectTween _createRectTween(Rect begin, Rect end) {
    return MaterialRectArcTween(begin: begin, end: end);
  }

  Route<dynamic> _onGenerateRoute(RouteSettings settings) {
    final String name = settings.name;
    final WidgetBuilder pageContentBuilder =
        name == Navigator.defaultRouteName && widget.home != null
            ? (BuildContext context) => widget.home
            : widget.routes[name];

    if (pageContentBuilder != null) {
      assert(
          widget.pageRoute != null,
          'The default onGenerateRoute handler for CustomNavigator must have a '
          'pageRoute set if the home or routes properties are set.');
      final Route<dynamic> route = widget.pageRoute<dynamic>(
        settings,
        pageContentBuilder,
      );
      assert(route != null,
          'The pageRouteBuilder for CustomNavigator must return a valid non-null Route.');
      return route;
    }
    if (widget.onGenerateRoute != null) return widget.onGenerateRoute(settings);
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: widget.navigatorKey,
      initialRoute: widget.initialRoute,
      onGenerateRoute: _onGenerateRoute,
      observers: [
        ...widget.observers,
        _heroController,
      ],
    );
  }
}
