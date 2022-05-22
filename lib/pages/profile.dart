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
  final List storys = [
    {
      "photo": "assets/images/photo/photo-9.jpeg",
    },
    {
      "photo": "assets/images/photo/photo-3.jpeg",
    },
    {
      "photo": "assets/images/photo/photo-1.jpeg",
    },
    {
      "photo": "assets/images/photo/photo-2.jpeg",
    },
    {
      "photo": "assets/images/photo/photo-8.jpeg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: ProfileAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Row(
              children: [
                Expanded(
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: BorderSide(
                            color: Color.fromARGB(255, 213, 213, 213))),
                    color: Colors.white,
                    textColor: Colors.black,
                    padding: EdgeInsets.all(5),
                    onPressed: () {},
                    child: Text(
                      "Editer le profil",
                      style: TextStyle(
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: BorderSide(
                          color: Color.fromARGB(255, 213, 213, 213))),
                  color: Colors.white,
                  padding: EdgeInsets.all(0),
                  onPressed: () {},
                  child: Icon(
                    Icons.person_add_outlined,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Story highlights',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 5,
                ),
                Text('Keep your favorite stories on your profile'),
                SizedBox(
                  height: 5,
                ),

                // Container(
                //   margin: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                //   child: SingleChildScrollView(
                //     scrollDirection: Axis.horizontal,
                //     child: Row(
                //       children: [
                //         for (var item in storys)
                //           Container(
                //             padding: EdgeInsets.all(10),
                //             child: Column(
                //               children: [
                //                 CircleAvatar(
                //                   radius: 35,
                //                   backgroundImage: AssetImage(item['photo']),
                //                 ),
                //               ],
                //             ),
                //           ),
                //       ],
                //     ),
                //   ),
                // ),
                
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
