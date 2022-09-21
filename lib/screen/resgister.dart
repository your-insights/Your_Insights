import 'package:flutter/material.dart';
import 'package:your_insights/colors.dart';
import 'package:your_insights/reusable_widget/reusable_widget.dart';
import 'package:your_insights/screen/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController _userNameTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            "Register",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color4, Color5],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                  20.0, MediaQuery.of(context).size.height * 0.15, 20.0, 0.0),
              child: Column(
                children: <Widget>[
                  logoWidget("assets/icons/login.svg"),
                  SizedBox(
                    height: 20,
                  ),
                  reusableTextField("Enter Username", Icons.person_outline,
                      false, _userNameTextController),
                  SizedBox(
                    height: 15,
                  ),
                  reusableTextField("Enter Email Id", Icons.email_outlined,
                      false, _emailTextController),
                  SizedBox(
                    height: 15,
                  ),
                  reusableTextField("Enter Password", Icons.lock_outline, false,
                      _passwordTextController),
                  SizedBox(
                    height: 25,
                  ),
                  signInSignUpButton(context, false, () {
                    FirebaseAuth.instance
                        .createUserWithEmailAndPassword(
                            email: _emailTextController.text,
                            password: _passwordTextController.text)
                        .then((value) {
                      print("Created New Account");
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    }).onError((error, stackTrace) {
                      print("Error ${error.toString()}");
                    });
                  })
                ],
              ),
            ),
          ),
        ));
  }
}
