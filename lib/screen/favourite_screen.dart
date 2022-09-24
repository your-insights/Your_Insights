import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:your_insights/colors.dart';

class LikePageScreen extends StatefulWidget {
  const LikePageScreen({Key? key}) : super(key: key);

  @override
  State<LikePageScreen> createState() => _LikePageScreenState();
}

class _LikePageScreenState extends State<LikePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: mobileBackgroundColor,
          title: Text('Cart',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    color: Color5,
                    letterSpacing: .4,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              )),
          centerTitle: true,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  'SocialMedia App Design -',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 25),
                padding: const EdgeInsets.only(left: 20),
                height: 300,
                child: Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 50),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(50),
                          bottomLeft: Radius.circular(50),
                        ),
                        color: whiteColor,
                      ),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(50),
                          bottomLeft: Radius.circular(50),
                        ),
                        child: Image.asset(
                          'assets/images/socialapp.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 190,
                      bottom: 20,
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          // color: Colors.deepOrange,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 240,
                      bottom: 20,
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black87,
                        ),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.shopping_cart,
                              color: whiteColor,
                              size: 25,
                            ),
                            Text(
                              'Added',
                              style: TextStyle(
                                color: whiteColor,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  'SourceHub App Design-',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 25),
                padding: const EdgeInsets.only(left: 20),
                height: 300,
                child: Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 50),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(50),
                          bottomLeft: Radius.circular(50),
                        ),
                        color: whiteColor,
                      ),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(50),
                          bottomLeft: Radius.circular(50),
                        ),
                        child: Image.asset(
                          'assets/images/sourcehub.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 190,
                      bottom: 20,
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          // color: Colors.deepOrange,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 240,
                      bottom: 20,
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black87,
                        ),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.shopping_cart,
                              color: whiteColor,
                              size: 25,
                            ),
                            Text(
                              'Added',
                              style: TextStyle(
                                color: whiteColor,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  'Chat App Design-',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 25),
                padding: const EdgeInsets.only(left: 20),
                height: 300,
                child: Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 50),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(50),
                          bottomLeft: Radius.circular(50),
                        ),
                        color: whiteColor,
                      ),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(50),
                          bottomLeft: Radius.circular(50),
                        ),
                        child: Image.asset(
                          'assets/images/msgapp.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 190,
                      bottom: 20,
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          // color: Colors.deepOrange,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 240,
                      bottom: 20,
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black87,
                        ),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.shopping_cart,
                              color: whiteColor,
                              size: 25,
                            ),
                            Text(
                              'Added',
                              style: TextStyle(
                                color: whiteColor,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
