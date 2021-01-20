import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:flutter_template/models/screen.dart';
import 'package:flutter_template/presentation/pages/counter_page.dart';
import 'package:flutter_template/presentation/pages/list_page.dart';
import 'package:flutter_template/presentation/pages/signin_page.dart';
import 'package:flutter_template/presentation/root.dart';

// <https://www.vojtech.net/posts/flutter-bottom-navigation/>
class Routes {
  static const Root = '/';
  static const SignIn = '/signin';
  static const Counter = '/counter';
  static const List = '/list';
}

final Map<String, Widget Function(BuildContext)> routes = {
  Routes.Root: (BuildContext context) => Root(),
  Routes.SignIn: (BuildContext context) => SigninPage(),
  Routes.Counter: (BuildContext context) => CounterPage(),
  Routes.List: (BuildContext context) => ListPage(),
};

class NavigationController extends StateNotifier<int> {
  NavigationController() : super(0);

  List<Screen> get _screens => [
        Screen(
          title: 'counter',
          child: CounterPage(),
          initialRoute: CounterPage.route,
          navigatorState: GlobalKey<NavigatorState>(),
          onGenerateRoute: (settings) {
            return MaterialPageRoute(builder: routes[Routes.Counter]);
          },
          scrollController: ScrollController(),
        ),
        Screen(
          title: "list",
          child: ListPage(),
          initialRoute: ListPage.route,
          navigatorState: GlobalKey<NavigatorState>(),
          onGenerateRoute: (settings) {
            return MaterialPageRoute(builder: routes[Routes.List]);
          },
          scrollController: ScrollController(),
        ),
      ];

  List<Screen> get screens => _screens;

  Screen get currentScreen => _screens[state];

  int get currentIndex => state;

  void _scrollToStart() {
    if (currentScreen.scrollController != null &&
        currentScreen.scrollController.hasClients) {
      currentScreen.scrollController.animateTo(
        0,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
    }
  }

  void setTab(int index) {
    if (index == currentIndex) {
      _scrollToStart();
    } else {
      state = index;
    }
  }

  Future<bool> onWillPop() async {
    final state = currentScreen.navigatorState.currentState;

    if (state.canPop()) {
      state.pop();
      return false;
    } else {
      if (currentIndex != 0) {
        setTab(0);
        return false;
      }
      return true;
    }
  }

  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: routes[settings.name]);
  }
}
