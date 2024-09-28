import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Floating App Bar';

    return MaterialApp(
      title: title,
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              title: Text(title),
              floating: true,
              flexibleSpace: Image.network(
                  "https://images.unsplash.com/photo-1531315630201-bb15abeb1653",
                  fit: BoxFit.cover),
              expandedHeight: 100.0,
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => ListTile(title: Text('Item $index')),
                childCount: 1000,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
