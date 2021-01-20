import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/providers/providers.dart';

class ListPage extends ConsumerWidget {
  static const route = '/list';

  ListPage();

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final nav = context.read(navigationProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('List'),
      ),
      body: ListView.builder(
        controller: nav.screens[1].scrollController,
        itemBuilder: (_, i) => ListTile(
          title: Text('Tile $i'),
        ),
      ),
    );
  }
}
