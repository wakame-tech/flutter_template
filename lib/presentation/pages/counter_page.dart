import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/providers/providers.dart';

// TODO: もしかして, RiverPod と Atomic Design 相性悪い説
class CounterPage extends ConsumerWidget {
  static const route = '/counter';

  CounterPage();

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final counter = watch(counterPageControllerProvider.state);
    final theme = watch(themeSelectorProvider.state);

    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${counter.count}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read(themeSelectorProvider).change(
              theme == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark);
          context.read(counterPageControllerProvider).increment();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
