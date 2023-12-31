import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:test4/LoginPage/login_page.dart';
import 'package:test4/NavbarPage/account.dart';
import 'package:test4/NavbarPage/cart.dart';
import 'package:test4/NavbarPage/home.dart';
import 'package:test4/NavbarPage/likes.dart';
import 'package:test4/NavbarPage/payment.dart';
import 'package:test4/searchProduct/searchpage.dart';

Future main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
    LikesPage(),
    CartPage(),
    Account(),
  ];

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Marketplace'),
          backgroundColor: Colors.red.shade600,
          foregroundColor: Colors.white,
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SearchPage()),
                );
              },
            ),
            IconButton(
              icon: const Icon(Icons.payment),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PaymentPage()),
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
            color: Colors.red.shade600,
            boxShadow: [
              BoxShadow(blurRadius: 20, color: Colors.white.withOpacity(.1)),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: GNav(
              gap: 8,
              backgroundColor: Colors.red.shade600,
              color: Colors.white,
              activeColor: Colors.white,
              iconSize: 24,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              duration: const Duration(milliseconds: 800),
              tabBackgroundColor: Colors.red.shade400,
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.favorite,
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
