import 'package:flutter/material.dart';
import 'package:ln_gram/app_bar/fedd_app_bar.dart';
import 'package:ln_gram/home.dart';
import 'package:ln_gram/widget/posts_widget.dart';
import 'package:ln_gram/widget/story_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LN-Gram',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: const Home(),
    );
  }
}

