import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:your_insights/colors.dart';
import 'package:your_insights/resources/auth_method.dart';
import 'package:your_insights/screen/login_screen.dart';
import 'package:your_insights/utils.dart';

class ProfileScreen extends StatefulWidget {
  final String uid;
  ProfileScreen({Key? key, required this.uid}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  var userData = {};

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    try {
      var userSnap = await FirebaseFirestore.instance
          .collection('users')
          .doc(widget.uid)
          .get();
      userData = userSnap.data()!;
      setState(() {});
    } catch (e) {
      showSnackbar(
        e.toString(),
        context,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: mobileBackgroundColor,
          title: Text(userData['companyName'],
              style: GoogleFonts.poppins(
                textStyle:
                    TextStyle(color: Color2, letterSpacing: .4, fontSize: 26),
              )),
          centerTitle: false,
          elevation: 0,
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    backgroundImage: NetworkImage(userData['photoUrl']),
                    radius: 74,
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.only(top: 35),
                    child: Text(userData['companyName'],
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(
                              color: Colors.white,
                              letterSpacing: .5,
                              fontSize: 28),
                        )),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(4)),
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(userData['about'],
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(
                              color: Color5, letterSpacing: .5, fontSize: 18),
                        )),
                  ),
                  SizedBox(height: 100),
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(vertical: 10, horizontal: 35)),
                        textStyle:
                            MaterialStateProperty.all(TextStyle(fontSize: 18))),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          backgroundColor: Color4,
                          content: Text(
                            'Are you sure ?',
                            style: TextStyle(color: Colors.white),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child:
                                  Text('No', style: TextStyle(color: Color2)),
                            ),
                            TextButton(
                              onPressed: () async {
                                await AuthMethods().signOut();
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const LoginScreen()));
                              },
                              child:
                                  Text('Yes', style: TextStyle(color: Color2)),
                            ),
                          ],
                        ),
                      );
                    },
                    child: Text(
                      'LogOut',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
