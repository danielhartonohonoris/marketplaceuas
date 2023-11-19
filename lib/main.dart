import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:test4/NavbarPage/account.dart';
import 'package:test4/NavbarPage/cart.dart';
import 'package:test4/NavbarPage/home.dart';
import 'package:test4/NavbarPage/likes.dart';
import 'package:test4/LoginPage/login_page.dart';
import 'package:test4/searchProduct/searchpage.dart';

void main() {
  runApp(MaterialApp(
    home: LoginPage(),
    debugShowCheckedModeBanner: false,
  ));
}

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  int currentPages = 0;

  final List<Widget> pages = [
    const Home(),
    const Likes(),
    const Cart(),
    const Account(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Marketplace'),
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SearchPage()),
                );
              },
            ),
          ],
        ),
        body: SafeArea(
          child: IndexedStack(
            index: currentPages,
            children: pages,
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.black,
            boxShadow: [
              BoxShadow(blurRadius: 20, color: Colors.white.withOpacity(.1))
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: GNav(
              gap: 8,
              backgroundColor: Colors.black,
              color: Colors.white,
              activeColor: Colors.white,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              duration: Duration(milliseconds: 800),
              tabBackgroundColor: Colors.grey.shade800,
              tabs: const[
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.favorite_border,
                  text: 'Likes',
                ),
                GButton(
                  icon: Icons.shopping_cart,
                  text: 'Cart',
                ),
                GButton(
                  icon: Icons.account_box,
                  text: 'Account',
                ),
              ],
              selectedIndex: currentPages,
              onTabChange: (index) {
                setState(() {
                  currentPages = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
