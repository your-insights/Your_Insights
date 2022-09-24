import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:your_insights/colors.dart';
import 'package:your_insights/screen/explorer_feature/chat_app.dart';
import 'package:your_insights/screen/explorer_feature/financial_details.dart';
import 'package:your_insights/screen/explorer_feature/social_media.dart';
import 'package:your_insights/screen/explorer_feature/sourcehub.dart';
import 'package:your_insights/screen/explorer_feature/task_manager.dart';
import 'package:your_insights/screen/explorer_feature/todoey.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color4,
        elevation: 0,
        title: Text('Our Products'),
      ),
      body: const MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  elevation: 0,
                  color: Color4,
                  child: InkWell(
                    splashColor: Colors.white,
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => TaskManager()));
                    },
                    child: const SizedBox(
                      width: 150,
                      height: 150,
                      child: Center(
                        child: Text('Task Manager\n App',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Color2, fontSize: 24)),
                      ),
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  elevation: 0,
                  color: Color4,
                  child: InkWell(
                    splashColor: Colors.white,
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Source()));
                    },
                    child: const SizedBox(
                      width: 150,
                      height: 150,
                      child: Center(
                        child: Text(
                          'SourceHub\n      App',
                          style: TextStyle(color: Color2, fontSize: 24),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  elevation: 0,
                  color: Color4,
                  child: InkWell(
                    splashColor: Colors.white,
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Financial()));
                    },
                    child: const SizedBox(
                      width: 150,
                      height: 150,
                      child: Center(
                        child: Text(
                          'Financial\n    App',
                          style: TextStyle(color: Color2, fontSize: 24),
                        ),
                      ),
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  elevation: 0,
                  color: Color4,
                  child: InkWell(
                    splashColor: Colors.white,
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Social()));
                    },
                    child: const SizedBox(
                      width: 150,
                      height: 150,
                      child: Center(
                        child: Text(
                          'Social Media\n       App',
                          style: TextStyle(color: Color2, fontSize: 24),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  elevation: 0,
                  color: Color4,
                  child: InkWell(
                    splashColor: Colors.white,
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Todoey()));
                    },
                    child: const SizedBox(
                      width: 150,
                      height: 150,
                      child: Center(
                        child: Text(
                          'ToDoey\n   App',
                          style: TextStyle(color: Color2, fontSize: 24),
                        ),
                      ),
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  elevation: 0,
                  color: Color4,
                  child: InkWell(
                    splashColor: Colors.white,
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Chat()));
                    },
                    child: const SizedBox(
                      width: 150,
                      height: 150,
                      child: Center(
                        child: Text(
                          'Chat\nApp',
                          style: TextStyle(color: Color2, fontSize: 24),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Text(
            'More Products Comming soon....',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 22, color: Colors.black),
          )
        ],
      ),
    );
  }
}
