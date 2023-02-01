import 'package:flutter/material.dart';
import 'package:tweddit/views/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Twedit',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.orange,
          primaryColor: Colors.white,
          textTheme: TextTheme(
            bodyText2: TextStyle(color: Colors.white),
          )),
      home: HomePage(),
    );
  }
}
