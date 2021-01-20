import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:flutter_template/providers/providers.dart';

class Root extends ConsumerWidget {
  static const route = '/';

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final nav = context.read(navigationProvider);
    final index = watch(navigationProvider.state);

    final items = nav.screens.map(
      (screen) => BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: screen.title,
      ),
    ).toList();

    final screens = nav.screens.map(
      (screen) => Offstage(
        // ??
        offstage: false,
        child: Navigator(
          key: screen.navigatorState,
          onGenerateRoute: screen.onGenerateRoute,
        ),
      ),
    ).toList();

    return WillPopScope(
      onWillPop: nav.onWillPop,
      child: Scaffold(
        body: IndexedStack(
          children: screens,
          index: index,
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: items,
          currentIndex: index,
          onTap: nav.setTab,
        ),
      ),
    );
  }
}
