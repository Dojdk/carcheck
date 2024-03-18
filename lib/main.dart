import 'package:carcheck/pages/mainpage.dart';
import 'package:carcheck/theme/colors.dart';
import 'package:flutter/material.dart';

import 'pages/searchpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme(
            brightness: Brightness.dark,
            primary: Colors.black,
            onPrimary: Colors.white,
            secondary: Colors.white,
            onSecondary: Colors.red,
            error: Colors.pink,
            onError: Colors.white,
            background: backgroundColor,
            onBackground: Colors.white,
            surface: greenColor,
            onSurface: Colors.white),
        useMaterial3: true,
      ),
      home: const MainPage(),
      routes: {
        SearchPage.routeName: (context) => const SearchPage(),
      },
    );
  }
}
