import 'package:flutter/material.dart';
import 'package:your_insights/colors.dart';
import 'package:your_insights/reusable_widget/reusable_widget.dart';
import 'package:your_insights/screen/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:your_insights/screen/resgister.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Color5,
            elevation: 0,
            title: const Text('Login',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))),
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
                  20.0, MediaQuery.of(context).size.height * 0.08, 20.0, 0.0),
              child: Column(
                children: <Widget>[
                  logoWidget("assets/icons/login.svg"),
                  SizedBox(
                    height: 20,
                  ),
                  reusableTextField("Enter Email", Icons.person_outline, false,
                      _emailTextController),
                  SizedBox(
                    height: 20,
                  ),
                  reusableTextField("Enter Password", Icons.lock_outline, false,
                      _passwordTextController),
                  SizedBox(
                    height: 10,
                  ),
                  signInSignUpButton(context, true, () {
                    FirebaseAuth.instance
                        .signInWithEmailAndPassword(
                            email: _emailTextController.text,
                            password: _passwordTextController.text)
                        .then((value) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    }).onError((error, stackTrace) {
                      print("Error ${error.toString()}");
                    });
                  }),
                  // signUpOption()
                ],
              ),
            ),
          ),
        ));
  }

  // Row signUpOption() {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     children: [
  //       const Text(
  //         "Don't have an account ?",
  //         style: TextStyle(color: Colors.white, fontSize: 18),
  //       ),
  //       GestureDetector(
  //         onTap: () {
  //           Navigator.push(context,
  //               MaterialPageRoute(builder: (context) => RegisterScreen()));
  //         },
  //         child: const Text(
  //           "Sign Up",
  //           style: TextStyle(
  //               color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
  //         ),
  //       ),
  //     ],
  //   );
}
