import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'package:your_insights/screen/add_screen.dart';
import 'package:your_insights/screen/favourite_screen.dart';
import 'package:your_insights/screen/feed_screen.dart';
import 'package:your_insights/screen/profile_screen.dart';

pickImage(ImageSource source) async {
  final ImagePicker _imagePicker = ImagePicker();
  XFile? _file = await _imagePicker.pickImage(source: source);
  if (_file != null) {
    return await _file.readAsBytes();
  }
  print('No Image Selected');
}

showSnackbar(String content, BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(content),
    ),
  );
}

const webScreenSize = 600;

List<Widget> homeScreenItems = [
  const FeedScreen(),
  const LikePageScreen(),
  ProfileScreen(
    uid: FirebaseAuth.instance.currentUser!.uid,
  ),
];
