import 'package:flutter/material.dart';
import 'package:your_insights/colors.dart';

class Todoey extends StatelessWidget {
  const Todoey({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text(
              'Todoey App',
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
                          'assets/images/todoapp.png',
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
                            text: 'Rs. 15k',
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
                          'Every company needs a platform which enables the workers to maintain their to-do list and manage the assigned tasks. With Your Insights, the team members can maintain their own individual to-do lists to keep a track of their tasks and complete them by the given time. By working with our app, users will get the facility to improve their work, increases their productivity, and get motivation. You can easily prioritize your work and even reminders can be set for completing the task by deadlines.',
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
