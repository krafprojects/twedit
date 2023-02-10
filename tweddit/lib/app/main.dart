import 'package:flutter/material.dart';
import 'package:tweddit/app/home.dart';

void main() {
  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          primaryColor: Colors.white,
          textTheme: const TextTheme(
            bodyText2: TextStyle(color: Colors.white),
          )),
      home: const HomePage(),
    );
  }
}
