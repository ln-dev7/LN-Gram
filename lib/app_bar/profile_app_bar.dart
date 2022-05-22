import 'package:flutter/material.dart';

// Create a class that extends the AppBar
class ProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'ln_dev7',
        style: TextStyle(fontSize: 20, color: Colors.black),
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.add_box_outlined,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(
            Icons.menu,
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
