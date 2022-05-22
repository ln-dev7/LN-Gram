import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ln_gram/app_bar/profile_app_bar.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProfileAppBar(),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage:
                      AssetImage('assets/images/photo/photo-10.jpeg'),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              '0',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 21,
                              ),
                            ),
                            Text('Post')
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '4.3M',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 21,
                              ),
                            ),
                            Text('Followers')
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '234',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 21,
                              ),
                            ),
                            Text('Following')
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'LN',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'FrontEnd Developer • Junior Flutter Dev • Web Integrator • YouTuber : https://youtube.com/c/LNDev',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'linktr.ee/ln_dev7',
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
