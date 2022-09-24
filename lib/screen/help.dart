import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({Key? key}) : super(key: key);

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help', style: TextStyle(fontSize: 26)),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 40),
            child: Text(
              'Please constact us for any help\nWe are available 24*7 for help\n Contact Details:9098094900',
              style: TextStyle(
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              'You can also vist on our website:',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          Link(
            uri: Uri.parse('https://your-insightsinfo.netlify.app/'),
            builder: (context, followLink) => TextButton(
              onPressed: followLink,
              child: Text('your_insights.com',
                  style: TextStyle(color: Colors.white)),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Please visit on our Social Media Handels:',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: Link(
                  uri: Uri.parse(
                      'https://instagram.com/your_insights05?igshid=YmMyMTA2M2Y='),
                  builder: (context, followLink) => ElevatedButton(
                      onPressed: followLink,
                      child: Text('Instagram'),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.pinkAccent),
                      )),
                ),
              ),
              Center(
                child: Link(
                  uri: Uri.parse('https://github.com/your-insights'),
                  builder: (context, followLink) => ElevatedButton(
                      onPressed: followLink,
                      child: Text('GitHub'),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.blueGrey),
                      )),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
