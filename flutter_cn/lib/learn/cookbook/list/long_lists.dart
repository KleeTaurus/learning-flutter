import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(
      items: List<String>.generate(10000, (i) => 'Item $i'),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.items});

  final List<String> items;
  IconData randomIcon(index) {
    final IconData icon;
    switch (index % 5) {
      case 0:
        icon = Icons.movie;
      case 1:
        icon = Icons.book;
      case 2:
        icon = Icons.music_note;
      case 3:
        icon = Icons.computer;
      case 4:
        icon = Icons.phone;
      default:
        icon = Icons.error;
    }

    return icon;
  }

  @override
  Widget build(BuildContext context) {
    const title = 'Long List';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(randomIcon(index)),
              title: Text(items[index]),
            );
          },
        ),
      ),
    );
  }
}
