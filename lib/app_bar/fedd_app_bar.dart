import 'package:flutter/material.dart';

// Create a class that extends the AppBar
class FeedAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Image.asset(
        'assets/images/logo.png',
        height: 45,
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.add_a_photo,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 15,
              right: 10,
              child: Image.asset(
                'assets/images/red-point.png',
                width: 10,
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.favorite_outline,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ],
        ),
        IconButton(
          icon: Icon(
            Icons.message_outlined,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
      ],
      backgroundColor: Colors.white,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
