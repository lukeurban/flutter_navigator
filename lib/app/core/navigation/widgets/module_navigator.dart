import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigator/app/core/navigation/module.dart';
import 'package:navigator/app/core/navigation/widgets/custom_navigator.dart';
import 'package:navigator/app/core/navigation/types.dart';

class ModuleNavigator extends StatefulWidget {
  ModuleNavigator({
    Key key,
    this.modules = const {},
    this.intialModule = 0,
  }) : super(key: key);

  final Map<int, Module> modules;
  final int intialModule;

  static _ModuleNavigatorState of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ModuleNavigatorData>().data;
  }

  @override
  State<StatefulWidget> createState() {
    return _ModuleNavigatorState();
  }
}

class _ModuleNavigatorState extends State<ModuleNavigator> {
  List<GlobalKey<NavigatorState>> _navigationKeys = [];
  List<Widget> builtModules = [];
  int _currentModule;

  @override
  void initState() {
    super.initState();
    _currentModule = widget.intialModule;
    _navigationKeys = List<GlobalKey<NavigatorState>>.generate(
      widget.modules.length,
      (i) => GlobalKey<NavigatorState>(),
    );
    builtModules = _buildModules();
  }

  // Main push method for cross module navigation
  Future<T> pushModuleAndRouteNamed<T extends Object>(
    int module,
    String routeName, {
    Object arguments,
  }) async {
    if (widget.modules.keys.contains(module)) {
      setState(() {
        _currentModule = module;
      });
    }
    return _navigationKeys[module].currentState.pushNamedAndRemoveUntil(routeName, (route) {
      return route.settings.name == routeName ? false : true;
    }, arguments: arguments);
  }

  List<Widget> _buildModules() {
    List<Widget> modules = [];
    widget.modules.forEach((moduleIndex, module) {
      modules.add(_buildOffstageNavigator(moduleIndex, module));
    });
    return modules;
  }

  Widget _buildOffstageNavigator(int index, Module module) {
    return CustomNavigator(
      observers: [
        // add observers -> can be from module object
      ],
      navigatorKey: _navigationKeys[index],
      pageRoute: PageRoutes.cupertinoPageRoute,
      initialRoute: module.initialRoute,
      routes: module.routes,
    );
  }

  _popToFirstRoute() {
    _navigationKeys[_currentModule].currentState.popUntil((route) {
      return route.isFirst;
    });
    return;
  }

  @override
  Widget build(BuildContext context) {
    return ModuleNavigatorData(
      data: this,
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentModule,
          onTap: (index) {
            if (index == _currentModule) {
              _popToFirstRoute();
            }
            setState(() {
              _currentModule = index;
            });
          },
          items: widget.modules.entries
              .map((module) => BottomNavigationBarItem(
                    label: module.value.name,
                    icon: module.value.icon,
                  ))
              .toList(),
        ),
        body: IndexedStack(
          index: _currentModule,
          children: builtModules,
        ),
      ),
    );
  }
}

class ModuleNavigatorData extends InheritedWidget {
  final _ModuleNavigatorState data;

  ModuleNavigatorData({
    Key key,
    @required Widget child,
    @required this.data,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }
}
