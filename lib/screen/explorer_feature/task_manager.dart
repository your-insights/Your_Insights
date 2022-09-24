import 'package:flutter/material.dart';
import 'package:your_insights/colors.dart';

class TaskManager extends StatelessWidget {
  const TaskManager({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text(
              'TaskManager App',
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
                height: 250,
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
                          'assets/images/dashboard.png',
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
                            text: 'Rs. 10k',
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
                          'A task manager is the most vital constituent of any team. What could be better than your task management software? Create a task management platform for your society members using Your Insights and complete all tasks by the deadline. We allow administrators to give tasks to their teams and even track the work of the members. Members may also contact with their coordinator about their efforts and share their messages through the discussion tools. Members can also post project reports and make changes to their work.',
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
