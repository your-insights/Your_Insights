import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:your_insights/colors.dart';
import 'package:your_insights/screen/about_us.dart';
import 'package:your_insights/screen/explore_screen.dart';
import 'dart:math' as math;

import 'package:your_insights/screen/help.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  int choiceIndex = 0;
  Map<String, double> dataMap = {
    "TaskManager App": 15.36,
    "Chat App": 26.45,
    "Social Media App": 35.25,
    "SourceHub App": 22.94,
  };
  Map<String, double> appMap = {
    "Social Media App": 8.36,
    "TaskManager App": 20.00,
    "SourceHub": 8.00,
    "Financial App": 25.20,
    "Todoey App": 11.94,
    "Chat App": 6.50,
  };
  List<Color> colorList = [
    const Color(0xFF1a2238),
    Colors.cyanAccent,
    Colors.green,
    Colors.red,
    Colors.white,
    Colors.teal
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color5,
        appBar: AppBar(
          backgroundColor: Color4,
          elevation: 0,
          title: Text('DASHBOARD'),
          centerTitle: true,
        ),
        drawer: Drawer(
          elevation: 0,
          backgroundColor: Color4,
          child: ListView(
            children: [
              SizedBox(height: 40),
              SizedBox(height: 12),
              ListTile(
                leading: const Icon(Icons.explore),
                title: const Text("Our Products"),
                onTap: () {
                  Navigator.of(context).pop;
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ExploreScreen()));
                },
              ),
              SizedBox(height: 12),
              ListTile(
                leading: const Icon(Icons.info),
                title: const Text("About Us"),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => AboutUs()));
                },
              ),
              SizedBox(height: 12),
              ListTile(
                leading: const Icon(Icons.help),
                title: const Text("Help"),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HelpScreen()));
                },
              ),
              SizedBox(height: 12),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text('Top App Of Our Company',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.start),
                Column(
                  children: [
                    Center(
                      child: PieChart(
                        dataMap: dataMap,
                        colorList: colorList,
                        chartRadius: MediaQuery.of(context).size.width / 1.7,
                        centerText: "Top Apps Product",
                        chartType: ChartType.disc,
                        ringStrokeWidth: 24,
                        animationDuration: Duration(seconds: 7),
                        chartValuesOptions: ChartValuesOptions(
                          showChartValues: true,
                          showChartValuesOutside: true,
                          showChartValuesInPercentage: true,
                          showChartValueBackground: false,
                        ),
                        legendOptions: LegendOptions(
                            showLegends: true,
                            legendShape: BoxShape.rectangle,
                            legendTextStyle: TextStyle(
                              fontSize: 15,
                            ),
                            legendPosition: LegendPosition.bottom),
                      ),
                    ),
                    SizedBox(height: 24),
                    Divider(color: Colors.black, height: 2),
                    SizedBox(height: 24),
                    Center(
                      child: Text('App Sale In 2021',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.start),
                    ),
                    SizedBox(height: 24),
                    Center(
                      child: PieChart(
                        dataMap: appMap,
                        colorList: colorList,
                        chartRadius: MediaQuery.of(context).size.width / 1.7,
                        centerText: "App Sale In 2021",
                        chartType: ChartType.ring,
                        ringStrokeWidth: 24,
                        animationDuration: Duration(seconds: 12),
                        chartValuesOptions: ChartValuesOptions(
                          showChartValues: true,
                          showChartValuesOutside: true,
                          showChartValuesInPercentage: true,
                          showChartValueBackground: false,
                        ),
                        legendOptions: LegendOptions(
                            showLegends: true,
                            legendShape: BoxShape.rectangle,
                            legendTextStyle: TextStyle(
                              fontSize: 15,
                            ),
                            legendPosition: LegendPosition.bottom),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
