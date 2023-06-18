import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme/pages/second_page.dart';
import 'package:theme/theme_state.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeState>(
        builder: (context, ThemeState themeNotifier, child) {
      return Scaffold(
        appBar: AppBar(
          title: Text(themeNotifier.isDark ? "Темная тема" : "Светлая тема"),
        ),
        body: Center(
          child: Column(children: [
            Switch(
              value: themeNotifier.isDark,
              onChanged: (bool value) {
                setState(() {
                  themeNotifier.isDark = value;
                });
              },
            ),
            TextButton(
              child: Text(
                'Вторая страница',
                style: TextStyle(
                    color: themeNotifier.isDark ? Colors.white : Colors.blue),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SecondPage(
                          text: themeNotifier.isDark
                              ? "Пока мир"
                              : "Привет мир")),
                );
              },
            ),
          ]),
        ),
      );
    });
  }
}
