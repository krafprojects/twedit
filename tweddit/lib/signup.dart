import 'package:flutter/material.dart';
import 'home.dart';
import 'login.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        //TODO: fix the appbar button exhibition - it has to be on top of the container below it
        //TODO: fix the visualization - keyboard covering 'Confirm Password' field
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 247, 4, 4),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: Colors.white,
            ),
          ),
        ),
        body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                      Color.fromRGBO(0, 0, 0, 0.45),
                      BlendMode.multiply,
                    ),
                    image: AssetImage('assets/images/examplebackground.jpg'),
                    fit: BoxFit.cover)),
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: const <Widget>[
                          Text(
                            "Sign up",
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Create a new account",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          child: Column(
                            children: <Widget>[
                              makeInput(label: "Email"),
                              makeInput(label: "Password", obscureText: true),
                              makeInput(
                                  label: "Confirm password", obscureText: true)
                            ],
                          )),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Container(
                            padding: const EdgeInsets.only(top: 3, left: 3),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: MaterialButton(
                                key: const Key('signupBtn'),
                                minWidth: 80,
                                height: 80,
                                onPressed: () {
                                  Navigator.push(context, MainPage());
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
                                child: const Text("SignUp",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                        fontSize: 18)))),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text(
                            "Already have an account? ",
                            style: TextStyle(color: Colors.white),
                          ),
                          TextButton(
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
                            child: const Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            )));
  }

  Widget makeInput({label, obscureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(label,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            )),
        const SizedBox(
          height: 5,
        ),
        TextField(
          obscureText: obscureText,
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: Color.fromARGB(255, 255, 255, 255))),
            border: OutlineInputBorder(
                borderSide:
                    BorderSide(color: Color.fromARGB(255, 255, 254, 254))),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
} // GS Subject to Change 