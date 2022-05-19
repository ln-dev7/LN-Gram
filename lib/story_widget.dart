import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  StoryWidget({Key? key}) : super(key: key);

  final List storyItems = [
    {"pseudo": "ln_dev7", "photo": "assets/images/photo/photo-3.jpeg"},
    {"pseudo": "zaker237", "photo": "assets/images/photo/photo-6.jpeg"},
    {"pseudo": "netflixfr", "photo": "assets/images/photo/photo-8.jpeg"},
    {"pseudo": "ln_code", "photo": "assets/images/photo/photo-10.jpeg"},
    {"pseudo": "rayan_", "photo": "assets/images/photo/photo-1.jpeg"},
    {"pseudo": "mrrain", "photo": "assets/images/photo/photo-2.jpeg"},
    {"pseudo": "yann", "photo": "assets/images/photo/photo-7.jpeg"},
    {"pseudo": "yohan", "photo": "assets/images/photo/photo-4.jpeg"},
    {"pseudo": "rabier_dev", "photo": "assets/images/photo/photo-9.jpeg"},
    {"pseudo": "fred_peg", "photo": "assets/images/photo/photo-5.jpeg"},
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: storyItems.map((story) {
        return Container(
          margin: const EdgeInsets.all(5),
          child: Column(children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset('assets/images/story-circle.png',
                    width: 70, height: 70),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                  backgroundImage: AssetImage(story['photo']),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Text(story['pseudo'],
                maxLines: 1,
                style: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                )),
            const SizedBox(
              height: 6,
            ),
          ]),
        );
      }).toList()),
    );
  }
}
