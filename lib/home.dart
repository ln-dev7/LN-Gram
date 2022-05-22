import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ln_gram/pages/feed.dart';
import 'package:ln_gram/pages/profile.dart';
import 'package:ln_gram/pages/reels.dart';
import 'package:ln_gram/pages/search.dart';
import 'package:ln_gram/pages/shop.dart';
import 'package:ln_gram/app_bar/fedd_app_bar.dart';
import 'package:ln_gram/widget/posts_widget.dart';
import 'package:ln_gram/widget/story_widget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab = 4;
  final List<Widget> screens = [Feed(), Search(), Reels(), Shop(), Profile()];

  final PageStorageBucket bucket = PageStorageBucket();

  Widget currentScreen = Profile();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MaterialButton(
                minWidth: MediaQuery.of(context).size.width * 0.20,
                onPressed: () {
                  setState(() {
                    currentScreen = Feed();
                    currentTab = 0;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    currentTab == 0
                        ? Icon(
                            Icons.home,
                          )
                        : Icon(Icons.home_outlined),
                  ],
                ),
              ),
              MaterialButton(
                minWidth: MediaQuery.of(context).size.width * 0.20,
                onPressed: () {
                  setState(() {
                    currentScreen = Search();
                    currentTab = 1;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    currentTab == 1
                        ? Icon(
                            Icons.search,
                          )
                        : Icon(Icons.search_outlined),
                  ],
                ),
              ),
              MaterialButton(
                minWidth: MediaQuery.of(context).size.width * 0.20,
                onPressed: () {
                  setState(() {
                    currentScreen = Reels();
                    currentTab = 2;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    currentTab == 2
                        ? Icon(
                            Icons.camera_alt,
                          )
                        : Icon(Icons.camera_alt_outlined),
                  ],
                ),
              ),
              MaterialButton(
                minWidth: MediaQuery.of(context).size.width * 0.20,
                onPressed: () {
                  setState(() {
                    currentScreen = Shop();
                    currentTab = 3;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    currentTab == 3
                        ? Icon(
                            Icons.shopping_bag,
                          )
                        : Icon(Icons.shopping_bag_outlined),
                  ],
                ),
              ),
              MaterialButton(
                minWidth: MediaQuery.of(context).size.width * 0.20,
                onPressed: () {
                  setState(() {
                    currentScreen = Profile();
                    currentTab = 4;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    currentTab == 4
                        ? Icon(
                            Icons.person,
                          )
                        : Icon(Icons.person_outlined),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
