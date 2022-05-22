import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ln_gram/widget/shop_app_bar.dart';

class Shop extends StatefulWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: ShopAppBar(),
      // body: Column(
      //   children: [
      //     Column(
      //       children: [
      //         Expanded(
      //             child: Container(
      //           padding: EdgeInsets.only(left: 5),
      //           decoration: BoxDecoration(
      //             color: Colors.white,
      //             borderRadius: BorderRadius.circular(30),
      //             boxShadow: [
      //               BoxShadow(
      //                 color: Colors.grey.shade300,
      //                 blurRadius: 4,
      //                 offset: Offset(0, 3),
      //               )
      //             ],
      //           ),
      //           child: TextField(
      //             decoration: InputDecoration(
      //               contentPadding: EdgeInsets.all(10),
      //               border: InputBorder.none,
      //               hintText: 'Recherchez un hôtel ...',
      //               // prefixIcon: Icon(
      //               //   Icons.search,
      //               //   color: Colors.grey[600],
      //               // ),
      //             ),
      //           ),
      //         )),
      //       ],
      //     ),
      //   ],
      // ),
    );
  }
}
