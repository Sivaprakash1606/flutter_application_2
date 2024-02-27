import 'package:flutter/material.dart';
import 'package:flutter_application_2/Homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color.fromARGB(233, 19, 53, 248),
        hintColor: Color.fromARGB(233, 96, 119, 248),
        fontFamily: "openSans",
      ),
      home: MainApp(),
    );
  }
}

class MainApp extends StatelessWidget {
  get theme => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              SizedBox(height: 30),
              Icon(Icons.person_outlined, color: Colors.black, size: 100),
              SizedBox(height: 13),
              Text(
                "Sign in",
                style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor),
              ),
              Text(
                "Login to your account",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[400]),
              ),
              const SizedBox(height: 20),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                child: TextFormField(
                  style: const TextStyle(
                    fontFamily: "openSans",
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    prefixIcon: const Icon(Icons.person, size: 30),
                    labelText: "Enter Email",
                    labelStyle: TextStyle(
                      fontFamily: "openSans",
                      fontSize: 25,
                      color: Colors.grey[800],
                    ),
                  ),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                child: TextFormField(
                  style: TextStyle(
                    fontFamily: "openSans",
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 1.5),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    prefixIcon: const Icon(Icons.key_off_rounded, size: 30),
                    labelText: "Enter Password",
                    labelStyle: TextStyle(
                      fontFamily: "openSans",
                      fontSize: 25,
                      color: Colors.grey[800],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 60,
                width: double.infinity,
                child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Theme.of(context).primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Homescreen()));
                  }, // Add a comma here
                  child: const Text("Sign IN",
                      style: TextStyle(
                        fontFamily: "openSans",
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      fontFamily: "openSans",
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Sign Up Now!",
                    style: TextStyle(
                      fontFamily: "openSans",
                      color: Color.fromARGB(233, 0, 37, 250),
                      fontSize: 20,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
