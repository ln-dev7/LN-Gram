import 'package:flutter/material.dart';

// Create a class that extends the AppBar
class SearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'Recherche',
        style: TextStyle(fontSize: 20, color: Colors.black),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
