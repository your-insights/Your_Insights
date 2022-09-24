import 'package:flutter/material.dart';
import 'package:your_insights/colors.dart';

class Source extends StatelessWidget {
  const Source({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text(
              'SourceHub App',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            )),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // const SizedBox(
              //   height: 10,
              // ),
              // Text(
              //   'Financial App',
              //   style: TextStyle(
              //     fontSize: 24,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),

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
                              'Buy Now',
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
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Price : ',
                            style: TextStyle(
                              color: whiteColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                            ),
                          ),
                          TextSpan(
                            text: 'Rs. 30k',
                            style: TextStyle(
                              color: whiteColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text.rich(TextSpan(children: [
                  TextSpan(
                      text:
                          'The most requirements of a company or a college society are information and resources. Your Insights gives you the incredible facility to gather all of your essential information and resources in one location that can be accessed with a single click, i.e. gather all of your information at your fingertips. Team members may provide information to our app, which the other team members can retrieve and utilize for their work. As a result, we provide an efficient method for team members to exchange information..',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        height: 1.8,
                      )),
                ])),
              )
            ],
          ),
        ));
  }
}
