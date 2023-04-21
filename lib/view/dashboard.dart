import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:shop/view/pages/home.dart';
import 'package:shop/view/pages/profile.dart';

class DashBoard extends StatefulWidget {

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {

  int selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Center(child: Text('Card',style: optionStyle,)),
    Center(child: Text('Cart',style: optionStyle,)),
    ProfilePage()

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(selectedIndex),
      bottomNavigationBar: ConvexAppBar(
        color: Colors.black,
        backgroundColor: Colors.white,
        elevation: 1,
        top: -12,
        initialActiveIndex: 0,
        onTap: (index){
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          TabItem(icon: Column(
            children: const [
              Icon(Icons.home),
              Expanded(child: Text('Home'))
            ],
          )),
          TabItem(icon: Column(
            children: const [
              Icon(Icons.home),
              Expanded(child: Text('Home'))
            ],
          )),
          TabItem(icon: Column(
            children: const [
              Icon(Icons.shopping_cart),
              Expanded(child: Text('Cart'))
            ],
          )),
          TabItem(icon: Column(
            children: const [
              Icon(Icons.person),
              Expanded(child: Text('Profile'))
            ],
          ))
        ],

      ),
    );
  }
}
