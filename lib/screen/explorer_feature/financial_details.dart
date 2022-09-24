import 'package:flutter/material.dart';
import 'package:your_insights/colors.dart';

class Financial extends StatelessWidget {
  const Financial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text(
              'Financial App',
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
                          'assets/images/fin.jpg',
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
                      bottom: 5,
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
                            text: 'Rs. 20k',
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
                          'Every business or college society requires a reliable and effective platform to manage its expenditures and budget. Create a Finance app for your company or community with Your Insights that manages your financial computations and maintains the data efficiently. Our software allows you to build and manage a budget on a monthly, yearly, or custom basis. In addition to these features, our tool can be used to split expenses. You may simply upload financial data with a single click, and we give you with this amazing software to handle your financial information.',
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
