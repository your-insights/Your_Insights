import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:your_insights/colors.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color4,
      appBar: AppBar(
        title: Text('About Us', style: TextStyle(fontSize: 26)),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView(
        // padding: const EdgeInsets.only(top: 0),
        children: <Widget>[
          buildStack(),
          buildContent(),
        ],
      ),
    );
  }

  Stack buildStack() {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(margin: EdgeInsets.only(bottom: 10), child: cover()),
        // Positioned(top: 175, child: profile()),
      ],
    );
  }

  Widget cover() => Container(
        color: Color3,
        // child: Image.asset(
        //   "assets/images/login2.png",
        //   width: double.infinity,
        //   height: 280,
        //   fit: BoxFit.cover,
        // ),
      );

  buildContent() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              'YOUR INSIGHTS',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Center(
            child: CircleAvatar(
              radius: 80,
              backgroundColor: Color3,
              child: Image.asset(
                "assets/images/logo2.png",
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15.0),
            child: Text(
              'About Us',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'Everything looks better with us. Your Insights allows you to develop a platform for adequately organising and managing your work. As the name implies, by utilising this platform, companies can effortlessly track their insights with a single click in the most flexible and user-friendly manner.',
            style: TextStyle(fontSize: 18, height: 1.4),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15.0),
            child: Text(
              'Vision',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'Our vision is to build a perfect platform which can live up to all expectations of our customers. We aim to establish a bond of loyalty and trust between customers and us.',
            style: TextStyle(fontSize: 18, height: 1.4),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15.0),
            child: Text(
              'Mission',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'Our mission is to create an effortless Website and Application like no other. Customer specification and customer satisfaction is our priority.',
            style: TextStyle(fontSize: 18, height: 1.4),
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
