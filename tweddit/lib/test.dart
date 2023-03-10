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













// import 'package:flutter/material.dart';
// import 'package:tweddit/views/PostsView.dart';
// import 'package:tweddit/signup.dart';
// import 'login.dart';

// void main() {
//   runApp(const MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: HomePage(),
//   ));
// }

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.red,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: SafeArea(
//             child: Container(
//                 decoration: const BoxDecoration(
//                     image: DecorationImage(
//                         image: AssetImage('Assets/examplebackground.jpg'),
//                         fit: BoxFit.cover)),
//                 width: double.infinity,
//                 height: MediaQuery.of(context).size.height,
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: <Widget>[
//                     Container(
//                       height: MediaQuery.of(context).size.height / 3,
//                       decoration: const BoxDecoration(
//                           image: DecorationImage(
//                               image:
//                                   AssetImage('Assets/dark Rumblr update.png'))),
//                     ),
//                     Column(
//                       children: <Widget>[
//                         MaterialButton(
//                             key: const Key('loginBtn'),
//                             minWidth: 80,
//                             height: 80,
//                             onPressed: () {
//                               Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: ((context) => const Login())));
//                               ScaffoldMessenger.of(context).showSnackBar(
//                                 const SnackBar(
//                                   content: Text("Login Button Pressed"),
//                                   duration: Duration(milliseconds: 300),
//                                 ),
//                               );
//                             },
//                             color: Colors.red,
//                             elevation: 0,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(50),
//                             ),
//                             child: const Text("Login",
//                                 style: TextStyle(
//                                     fontWeight: FontWeight.w600,
//                                     fontSize: 18))),
//                         const SizedBox(
//                           height: 40,
//                         ),
//                         Container(
//                             padding: const EdgeInsets.only(top: 3, left: 3),
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(50),
//                             ),
//                             child: MaterialButton(
//                                 key: const Key('signupBtn'),
//                                 minWidth: 80,
//                                 height: 80,
//                                 onPressed: () {
//                                   Navigator.push(
//                                       context,
//                                       MaterialPageRoute(
//                                           builder: ((context) =>
//                                               const SignupPage())));
//                                   ScaffoldMessenger.of(context).showSnackBar(
//                                     const SnackBar(
//                                       content: Text("Sign Up Button Pressed"),
//                                       duration: Duration(milliseconds: 300),
//                                     ),
//                                   );
//                                 },
//                                 color: Colors.red,
//                                 elevation: 0,
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(50),
//                                 ),
//                                 child: const Text("Sign up",
//                                     style: TextStyle(
//                                         fontWeight: FontWeight.w600,
//                                         fontSize: 18))))
//                       ],
//                     )
//                   ],
//                 ))));
//   }
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: '',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//           primarySwatch: Colors.blueGrey,
//           primaryColor: Colors.white,
//           textTheme: const TextTheme(
//             bodyText2: TextStyle(color: Colors.white),
//           )),
//       home: const HomePage(),
//     );
//   }
// }
