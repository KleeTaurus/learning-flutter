import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final List<MaterialColor> colors = [
      Colors.red,
      Colors.blue,
      Colors.green,
      Colors.yellow,
      Colors.orange,
    ];
    const title = 'Horizontal List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          height: 200,
          child: ListView(
            // This next line does the trick.
            scrollDirection: Axis.horizontal,
            children: List.generate(
              colors.length,
              (index) {
                return Container(
                  width: 160,
                  color: colors[index],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
