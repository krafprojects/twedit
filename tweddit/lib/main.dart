import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:tweddit/signup.dart';
import 'login.dart';
import 'package:http/http.dart' as http;

void main() async {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));

//API
  const subreddit = "flutterdev";
  final url = Uri.parse("https://www.reddit.com/r/$subreddit/top.json");
  final response = await http.get(url, headers: {'User-Agent': 'TestRumblr'});
  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    final posts = data['data']['children'];
    for (var post in posts) {
      final title = post['data']['title'];
      print(title); //
    }
  } else {
    print('Error');
  }

  final String baseUrl = 'https://oauth.reddit.com/r/FlutterDev/new';
  final Map<String, String> headers = {
    'User-Agent': 'TestRumblr',
    'Authorization': 'bearer mnhdHwfIf8hBTTJjXiyZtA'
  };

  final data = json.decode(response.body);

  List<dynamic> posts = data['data']['children'];

  for (var post in posts) {
    String title = post['data']['title'];
    print(data);
  }
//API
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
                        image: AssetImage('Assets/examplebackground.jpg'),
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
                              image:
                                  AssetImage('Assets/darkRumblrUpdate.png'))),
                    ),
                    Column(
                      children: <Widget>[
                        MaterialButton(
                            key: const Key('loginBtn'),
                            minWidth: 80,
                            height: 80,
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
                            color: Colors.red,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: const Text("Login",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18))),
                        const SizedBox(
                          height: 40,
                        ),
                        Container(
                            padding: const EdgeInsets.only(top: 3, left: 3),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: MaterialButton(
                                key: const Key('signupBtn'),
                                minWidth: 80,
                                height: 80,
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
                                color: Colors.red,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: const Text("Sign up",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18))))
                      ],
                    )
                  ],
                ))));
  }
}
