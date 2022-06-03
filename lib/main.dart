import 'package:flutter/material.dart';
import 'package:test_parttime_flutter/pages/home/home_page.dart';
import 'package:test_parttime_flutter/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: background,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
