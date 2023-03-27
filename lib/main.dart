import 'package:flutter/material.dart';
import 'package:tocket/core/notifiers.dart';
import 'package:tocket/widget_tree.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkModeNotifier,
      builder: (context, isDark, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            brightness: isDark ? Brightness.dark : Brightness.light,
            useMaterial3: true,
          ),
          home: const WidgetTree(),
        );
      },
    );
  }
}
