import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ln_gram/app_bar/fedd_app_bar.dart';
import 'package:ln_gram/widget/posts_widget.dart';
import 'package:ln_gram/widget/story_widget.dart';

class Feed extends StatefulWidget {
  const Feed({Key? key}) : super(key: key);

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FeedAppBar(),
      body: SingleChildScrollView(
        child: Column(
      children: [StoryWidget(), PostsWidget()],
    )),
    );
  }
}
