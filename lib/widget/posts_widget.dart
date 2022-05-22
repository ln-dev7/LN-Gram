import 'package:flutter/material.dart';

class PostsWidget extends StatelessWidget {
  PostsWidget({Key? key}) : super(key: key);

  final List postItemsTop = [
    {
      "pseudo": "ln_dev7",
      "photo": "assets/images/post/post-3.jpg",
      "photoProfil": "assets/images/photo/photo-1.jpeg",
      "description":
          "Sommes-nous parvenus, au cours d'une année de pension, jeune personne assez laide. Loi physique, les changements dans la structure de la plante en vie.",
      "location": "Douala, Cameroun",
    },
    {
      "pseudo": "johan_smith",
      "photo": "assets/images/post/post-4.jpg",
      "photoProfil": "assets/images/photo/photo-2.jpeg",
      "description":
          "Répétez cette idée simple tout le long de cette année-là.",
      "location": "NewYork, USA",
    },
    {
      "pseudo": "zakaria_",
      "photo": "assets/images/post/post-5.jpg",
      "photoProfil": "assets/images/photo/photo-3.jpeg",
      "description":
          "Tomber malade et être méfiant passe chez eux que nous discuterons plus commodément les conditions d'un pacte encore inviolé qu'il avait lues dans des livres.",
      "location": "Neverland",
    },
  ];

  final List postItemsCenter = [
    {
      "pseudo": "_jenny_mc",
      "photo": "assets/images/post/post-2.jpg",
      "photoProfil": "assets/images/photo/photo-4.jpeg",
      "description":
          "Disposons alors toutes les passions trouvent un aliment substantiel dans les détritus amenés de la haute géométrie quelque talent et beaucoup de réserve ; ses yeux s'ouvrirent.",
      "location": "Yaounde, Cameroun",
    },
    {
      "pseudo": "emanuele.aloia",
      "photo": "assets/images/post/post-1.jpg",
      "photoProfil": "assets/images/photo/photo-5.jpeg",
      "description":
          "Abaissez vos pincettes et écoutez mes ordres, et en bleu, la sieste de quatre heures.",
      "location": "Torino, Italie",
    },
    {
      "pseudo": "ln_dev7",
      "photo": "assets/images/post/post-10.jpeg",
      "photoProfil": "assets/images/photo/photo-6.jpeg",
      "description":
          "Sommes-nous parvenus, au cours d'une année de pension, jeune personne assez laide. Loi physique, les changements dans la structure de la plante en vie.",
      "location": "Douala, Cameroun",
    },
    {
      "pseudo": "johan_smith",
      "photo": "assets/images/post/post-6.jpg",
      "photoProfil": "assets/images/photo/photo-7.jpeg",
      "description":
          "Répétez cette idée simple tout le long de cette année-là.",
      "location": "NewYork, USA",
    },
  ];

  final List postItemsBottom = [
    {
      "pseudo": "code_fun",
      "photo": "assets/images/post/post-8.jpeg",
      "photoProfil": "assets/images/photo/photo-8.jpeg",
      "description":
          "Sommes-nous parvenus, au cours d'une année de pension, jeune personne assez laide. Loi physique, les changements dans la structure de la plante en vie.",
      "location": "Undifined",
    },
    {
      "pseudo": "rich.fr",
      "photo": "assets/images/post/post-7.jpg",
      "photoProfil": "assets/images/photo/photo-9.jpeg",
      "description":
          "Répétez cette idée simple tout le long de cette année-là.",
      "location": "Au monde",
    },
    {
      "pseudo": "yakito",
      "photo": "assets/images/post/post-9.jpeg",
      "photoProfil": "assets/images/photo/photo-10.jpeg",
      "description":
          "les conditions d'un pacte encore inviolé qu'il avait lues dans des livres.",
      "location": "Japon",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: postItemsTop.map((post) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 35,
                  color: Colors.white,
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 30,
                          backgroundImage: AssetImage(post['photoProfil']),
                        ),
                        Container(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Text(
                                        post['pseudo'],
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Image.asset(
                                        'assets/images/verification-badge.png',
                                        height: 12,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 3),
                                Text(
                                  post['location'],
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ]),
                        ),
                        Expanded(child: Container()),
                        Icon(
                          Icons.more_vert,
                          color: Colors.black,
                        ),
                      ]),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 3),
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(post['photo']),
                      fit: BoxFit.cover,
                    ),
                  ),
                  // child: Image.asset(post['photo'], fit: BoxFit.cover), // Mettre une image directement dans le container
                ),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.favorite_border),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.comment_outlined),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.send_outlined),
                      onPressed: () {},
                    ),
                    Expanded(child: Container()),
                    IconButton(
                      icon: Icon(Icons.bookmark_outline),
                      onPressed: () {},
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 10,
                        backgroundImage: AssetImage(post['photoProfil']),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'Aime par ',
                          style: DefaultTextStyle.of(context).style,
                          children: [
                            TextSpan(
                              text: post['pseudo'],
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            TextSpan(
                              text: ' et ',
                            ),
                            TextSpan(
                              text: '391 personnes',
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        post['pseudo'],
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Text(
                          post['description'],
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        'voir plus',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 73, 73, 73)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'Voir les 234 commentaires ...',
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 74, 74, 74)),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Text('Il y\'a 2 heures',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey.shade400,
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Traduire',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 24, 24, 24)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            );
          }).toList(),
        ),
        Container(
          color: Color(0xFFfafafa),
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Column(
            // #0195f7
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Suggestion pour toi',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                    Text('Voir tout',
                        style:
                            TextStyle(fontSize: 12, color: Color(0xFF0195f7))),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (var item in postItemsCenter)
                      Container(
                        margin: EdgeInsets.fromLTRB(5, 10, 5, 0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFFe6e6e6),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 65,
                                backgroundImage:
                                    AssetImage(item['photoProfil']),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                item['pseudo'],
                                style: TextStyle(fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Suivi par main.py',
                                style: TextStyle(color: Colors.grey),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              // Create a button
                              FlatButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    side: BorderSide(color: Color(0xFF0195f7))),
                                color: Color(0xFF0195f7),
                                textColor: Color.fromARGB(255, 255, 255, 255),
                                padding: EdgeInsets.fromLTRB(50, 0.8, 50, 0.8),
                                onPressed: () {},
                                child: Text(
                                  "Suivre",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Column(
          children: postItemsCenter.map((post) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 35,
                  color: Colors.white,
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 30,
                          backgroundImage: AssetImage(post['photoProfil']),
                        ),
                        Container(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Text(
                                        post['pseudo'],
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Image.asset(
                                        'assets/images/verification-badge.png',
                                        height: 12,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 3),
                                Text(
                                  post['location'],
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ]),
                        ),
                        Expanded(child: Container()),
                        Icon(
                          Icons.more_vert,
                          color: Colors.black,
                        ),
                      ]),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 3),
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(post['photo']),
                      fit: BoxFit.cover,
                    ),
                  ),
                  // child: Image.asset(post['photo'], fit: BoxFit.cover), // Mettre une image directement dans le container
                ),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.favorite_border),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.comment_outlined),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.send_outlined),
                      onPressed: () {},
                    ),
                    Expanded(child: Container()),
                    IconButton(
                      icon: Icon(Icons.bookmark_outline),
                      onPressed: () {},
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 10,
                        backgroundImage: AssetImage(post['photoProfil']),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      RichText(
                          text: TextSpan(
                              text: 'Aime par ',
                              style: DefaultTextStyle.of(context).style,
                              children: [
                            TextSpan(
                              text: post['pseudo'],
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            TextSpan(
                              text: ' et ',
                            ),
                            TextSpan(
                              text: '391 personnes',
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                          ])),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        post['pseudo'],
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Text(
                          post['description'],
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        'voir plus',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 73, 73, 73)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'Voir les 234 commentaires ...',
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 74, 74, 74)),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Text('Il y\'a 2 heures',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey.shade400,
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Traduire',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 24, 24, 24)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            );
          }).toList(),
        ),
        Container(
          color: Color(0xFFfafafa),
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Column(
            // #0195f7
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Suggestion pour toi',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                    Text('Voir tout',
                        style:
                            TextStyle(fontSize: 12, color: Color(0xFF0195f7))),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (var item in postItemsTop)
                      Container(
                        margin: EdgeInsets.fromLTRB(5, 10, 5, 0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFFe6e6e6),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 65,
                                backgroundImage:
                                    AssetImage(item['photoProfil']),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                item['pseudo'],
                                style: TextStyle(fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Suivi par main.py',
                                style: TextStyle(color: Colors.grey),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              // Create a button
                              FlatButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    side: BorderSide(color: Color(0xFF0195f7))),
                                color: Color(0xFF0195f7),
                                textColor: Color.fromARGB(255, 255, 255, 255),
                                padding: EdgeInsets.fromLTRB(50, 0.8, 50, 0.8),
                                onPressed: () {},
                                child: Text(
                                  "Suivre",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Column(
          children: postItemsBottom.map((post) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 35,
                  color: Colors.white,
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 30,
                          backgroundImage: AssetImage(post['photo']),
                        ),
                        Container(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Text(
                                        post['pseudo'],
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Image.asset(
                                        'assets/images/verification-badge.png',
                                        height: 12,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 3),
                                Text(
                                  post['location'],
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ]),
                        ),
                        Expanded(child: Container()),
                        Icon(
                          Icons.more_vert,
                          color: Colors.black,
                        ),
                      ]),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 3),
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(post['photoProfil']),
                      fit: BoxFit.cover,
                    ),
                  ),
                  // child: Image.asset(post['photo'], fit: BoxFit.cover), // Mettre une image directement dans le container
                ),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.favorite_border),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.comment_outlined),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.send_outlined),
                      onPressed: () {},
                    ),
                    Expanded(child: Container()),
                    IconButton(
                      icon: Icon(Icons.bookmark_outline),
                      onPressed: () {},
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 10,
                        backgroundImage: AssetImage(post['photoProfil']),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      RichText(
                          text: TextSpan(
                              text: 'Aime par ',
                              style: DefaultTextStyle.of(context).style,
                              children: [
                            TextSpan(
                              text: post['pseudo'],
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            TextSpan(
                              text: ' et ',
                            ),
                            TextSpan(
                              text: '391 personnes',
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                          ])),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        post['pseudo'],
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Text(
                          post['description'],
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        'voir plus',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 73, 73, 73)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'Voir les 234 commentaires ...',
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 74, 74, 74)),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Text('Il y\'a 2 heures',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey.shade400,
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Traduire',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 24, 24, 24)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            );
          }).toList(),
        ),
      ],
    );
  }
}
