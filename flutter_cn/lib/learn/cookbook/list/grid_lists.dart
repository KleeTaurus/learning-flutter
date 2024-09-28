import 'package:flutter/material.dart';

class GridViewList extends StatelessWidget {
  const GridViewList({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: List.generate(
        100,
        (index) {
          return Center(
            child: Text(
              'Item $index',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          );
        },
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Grid List';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: const GridViewList(),
      ),
    );
  }
}

void main() {
  runApp(const MyApp());
}
