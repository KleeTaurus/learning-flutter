import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart'; // 引入这个包才能使用 debugPaintSizeEnabled

void main() {
  // 启用布局边界调试
  debugPaintSizeEnabled = true; // 设置为 true 开启调试，false 关闭
  runApp(
    const Center(
      child: Text(
        'Hello, world!',
        textDirection: TextDirection.ltr,
      ),
    ),
  );
}
