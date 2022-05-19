import 'package:flutter/material.dart';

class PostsWidget extends StatelessWidget {
  PostsWidget({Key? key}) : super(key: key);

  final List postItems = [
    {
      "pseudo": "ln_dev7",
      "photo": "assets/images/photo/photo-3.jpeg",
      "photoProfil": "assets/images/profil/photo-1.webp",
      "description":
          "Sommes-nous parvenus, au cours d'une année de pension, jeune personne assez laide. Loi physique, les changements dans la structure de la plante en vie.",
      "location": "Douala, Cameroun",
    },
    {
      "pseudo": "boris_gautier",
      "photo": "assets/images/photo/photo-2.jpeg",
      "photoProfil": "assets/images/profil/photo-2.jpeg",
      "description":
          "Disposons alors toutes les passions trouvent un aliment substantiel dans les détritus amenés de la haute géométrie quelque talent et beaucoup de réserve ; ses yeux s'ouvrirent.",
      "location": "Yaounde, Cameroun",
    },
    {
      "pseudo": "emanuele.aloia",
      "photo": "assets/images/photo/photo-1.jpeg",
      "photoProfil": "assets/images/profil/photo-3.jpeg",
      "description":
          "Abaissez vos pincettes et écoutez mes ordres, et en bleu, la sieste de quatre heures.",
      "location": "Torino, Italie",
    },
    {
      "pseudo": "zakaria_",
      "photo": "assets/images/photo/photo-5.jpeg",
      "photoProfil": "assets/images/profil/photo-4.webp",
      "description":
          "Tomber malade et être méfiant passe chez eux que nous discuterons plus commodément les conditions d'un pacte encore inviolé qu'il avait lues dans des livres.",
      "location": "Neverland",
    },
    {
      "pseudo": "johan_smith",
      "photo": "assets/images/photo/photo-4.jpeg",
      "photoProfil": "assets/images/profil/photo-5.jpeg",
      "description":
          "Répétez cette idée simple tout le long de cette année-là.",
      "location": "NewYork, USA",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
        children: postItems.map((post) {
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
            height: 300,
            decoration: BoxDecoration(
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
    }).toList());
  }
}
