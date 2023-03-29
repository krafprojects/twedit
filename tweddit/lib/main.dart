import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tweddit/app_state.dart';
import 'package:tweddit/signup.dart';
import 'login.dart';
import 'package:http/http.dart' as http;
import 'feed_page.dart';

void main() async {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppState(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                          Color.fromRGBO(0, 0, 0, 0.45),
                          BlendMode.multiply,
                        ),
                        image:
                            AssetImage('assets/images/examplebackground.jpg'),
                        fit: BoxFit.cover)),
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height / 3,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/darkRumblrUpdate.png'))),
                    ),
                    Column(
                      children: <Widget>[
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                fixedSize: Size(200, 60),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 40,
                                  vertical: 15,
                                ),
                                textStyle: TextStyle(fontSize: 18)),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) => const Login())));
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text("Login Button Pressed"),
                                  duration: Duration(milliseconds: 300),
                                ),
                              );
                            },
                            child: Text("Login")),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                            padding: const EdgeInsets.only(top: 3, left: 3),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: OutlinedButton(
                                style: ElevatedButton.styleFrom(
                                    fixedSize: Size(200, 60),
                                    side: BorderSide(color: Colors.white),
                                    foregroundColor: Colors.white,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 40,
                                      vertical: 15,
                                    ),
                                    textStyle: TextStyle(fontSize: 18)),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) =>
                                              const SignupPage())));
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text("Sign Up Button Pressed"),
                                      duration: Duration(milliseconds: 300),
                                    ),
                                  );
                                },
                                child: Text("Signup")))
                      ],
                    )
                  ],
                ))));
  }
}
