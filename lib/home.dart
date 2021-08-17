import 'package:flutter/material.dart';
import 'package:shopping_cart/pages/CartPage.dart';
import 'package:shopping_cart/pages/HomePage.dart';
//import 'package:shopping_cart/pages/ProfilePage.dart';
import 'package:shopping_cart/pages/ProfilePage1.dart';
import 'package:shopping_cart/pages/SearchPage.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedPosition = 0;
  List<Widget> listBottomWidget = [];

  @override
  void initState() {
    super.initState();
    addHomePage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          // ignore: deprecated_member_use
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(
              // ignore: deprecated_member_use
              icon: Icon(Icons.search),
              // ignore: deprecated_member_use
              title: Text("Search")),
          BottomNavigationBarItem(
              // ignore: deprecated_member_use
              icon: Icon(Icons.shopping_cart),
              // ignore: deprecated_member_use
              title: Text("Cart")),
          BottomNavigationBarItem(
              // ignore: deprecated_member_use
              icon: Icon(Icons.person),
              // ignore: deprecated_member_use
              title: Text("Account")),
        ],
        currentIndex: selectedPosition,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey.shade100,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        onTap: (position) {
          setState(() {
            selectedPosition = position;
          });
        },
      ),
      body: Builder(builder: (context) {
        return listBottomWidget[selectedPosition];
      }),
    );
  }

  void addHomePage() {
    listBottomWidget.add(HomePage());
    listBottomWidget.add(SearchPage());
    listBottomWidget.add(CartPage());
    listBottomWidget.add(ProfilePage1());
  }
}
