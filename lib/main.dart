import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme/pages/first_page.dart';
import 'package:theme/theme_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeState(),
      child: Consumer<ThemeState>(
          builder: (context, ThemeState themeNotifier, child) {
            return MaterialApp(
              theme: themeNotifier.isDark
                  ? ThemeData(
                brightness: Brightness.dark,
              )
                  : ThemeData(
                brightness: Brightness.light,
              ),
              debugShowCheckedModeBanner: false,
              home: const FirstPage(),
            );
          }),
    );
  }
}



