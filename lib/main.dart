import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LN-Gram',
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
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
          IconButton(
            icon: Icon(
              Icons.favorite_outline,
              color: Colors.black,
            ),
            onPressed: () {},
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
      ),
      body: Container(
        color: Colors.blue,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search_outlined,
                color: Colors.black,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shop_rounded,
                color: Colors.black,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag_outlined,
                color: Colors.black,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
                color: Colors.black,
              ),
              label: ''),
        ],
      ),
    );
  }
}
