import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        textDirection: TextDirection.ltr,
        children: [
          Expanded(child: Image.network('https://picsum.photos/100?image=1')),
          Expanded(
              flex: 2,
              child: Image.network('https://picsum.photos/100?image=2')),
          Expanded(child: Image.network('https://picsum.photos/100?image=3')),
        ],
      ),
    );
  }
}

void main() {
  debugPaintSizeEnabled = true;
  runApp(const MyApp());
}
