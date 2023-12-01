import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:test4/KategoriPage/Elektronik.dart';
import 'package:test4/KategoriPage/Kecantikan.dart';
import 'package:test4/KategoriPage/MakananMinuman.dart';
import 'package:test4/KategoriPage/Pakaian.dart';
import 'package:test4/Product/AirLeMineral.dart';
import 'package:test4/Product/Aqua.dart';
import 'package:test4/Product/Headset.dart';
import 'package:test4/Product/Hp.dart';
import 'package:test4/Product/JoystickGamepad.dart';
import 'package:test4/Product/Sepatu.dart';
import 'package:test4/Product/Topi.dart';
import 'package:test4/Product/parfum.dart';
import 'package:test4/searchProduct/Parfum.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> assetImages = [
    'image/iklan_1.jpg',
    'image/iklan_2.jpg',
    'image/iklan_3.jpg',
    'image/flashsale.jpeg',
  ];

  List<CategoryModel> categories = [
    //Memanggil Class CategoryModel
    CategoryModel('Elektronik', Icons.phone),
    CategoryModel('Pakaian', Icons.shopping_bag),
    CategoryModel('Kecantikan', Icons.favorite),
    CategoryModel('Makanan & Minuman', Icons.fastfood),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        //ScrollWidget
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              // Profile Card
              Container(
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 249, 66, 66),
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('image/profil.png'),
                    ),
                    const SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Kelompok Marketplace',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 6),
                          child: const Text(
                            'Mengikuti',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //Banner
              Container(
                margin: const EdgeInsets.only(top: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade400,
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: CarouselSlider(
                  items: assetImages.map((assetPath) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              assetPath,
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    );
                  }).toList(),
                  options: CarouselOptions(
                    height: 200.0,
                    initialPage: 0,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    autoPlayInterval: const Duration(seconds: 3),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              //Kategori
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'Kategori',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        //Membuat widget dari list categories
                        children: categories
                            .map(
                              (category) => _buildCategoryCard(
                                //Memanggil fungsi untuk membuat title dan icon
                                category.title,
                                category.icon,
                                //Fungsi untuk menavigasi ke halaman kategori
                                () {
                                  _navigateToCategoryPage(
                                    context,
                                    category.title,
                                  );
                                },
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  ],
                ),
              ),
              //Product
              Container(
                margin: const EdgeInsets.only(right: 295, bottom: 10, top: 10),
                child: const Text(
                  "Produk",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SafeArea(
                  child: Container(
                margin: const EdgeInsets.fromLTRB(21, 0, 0, 0),
                child: Column(
                  children: [
                    //Row 1
                    //Product Row 1
                    Row(
                      children: [
                        //Product 1
                        Container(
                          width: 170,
                          height: 170,
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Hp()),
                                  );
                                },
                                child: Image.asset(
                                  'image/hp.jpg',
                                  width: 180,
                                  height: 90,
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text(
                                'Hp Oppo',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                'Rp. 2.000.000',
                                style: TextStyle(
                                  fontFamily: 'Arial',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                '219 terjual',
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                        //Product 2
                        Container(
                          width: 170,
                          height: 170,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Sepatu()),
                                  );
                                },
                                child: Image.asset(
                                  'image/sepatu.jpg',
                                  width: 180,
                                  height: 90,
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text(
                                'Sepatu Converse',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                'Rp. 800.000',
                                style: TextStyle(
                                  fontFamily: 'Arial',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                '102 terjual',
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    //Row 2
                    //Product Row 2
                    Row(
                      children: [
                        //Product 3
                        Container(
                          width: 170,
                          height: 170,
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LeMineral()),
                                  );
                                },
                                child: Image.asset(
                                  'image/le_mineral.jpeg',
                                  width: 180,
                                  height: 90,
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text(
                                'Le Mineral',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                'Rp. 4.000',
                                style: TextStyle(
                                  fontFamily: 'Arial',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                '189 terjual',
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                        //Product 4
                        Container(
                          width: 170,
                          height: 170,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Joystick()),
                                  );
                                },
                                child: Image.asset(
                                  'image/joystick.jpeg',
                                  width: 180,
                                  height: 90,
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text(
                                'Joystick',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                'Rp. 300.000',
                                style: TextStyle(
                                  fontFamily: 'Arial',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                '401 terjual',
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    //Row 3
                    //Product Row 3
                    Row(
                      children: [
                        //Product 5
                        Container(
                          width: 170,
                          height: 170,
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Aqua()),
                                  );
                                },
                                child: Image.asset(
                                  'image/aqua.jpg',
                                  width: 180,
                                  height: 90,
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text(
                                'Aqua',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                'Rp. 4.000',
                                style: TextStyle(
                                  fontFamily: 'Arial',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                '219 terjual',
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                        //Product 6
                        Container(
                          width: 170,
                          height: 170,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Topi()),
                                  );
                                },
                                child: Image.asset(
                                  'image/topi.jpeg',
                                  width: 180,
                                  height: 90,
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text(
                                'Topi',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                'Rp. 20.000',
                                style: TextStyle(
                                  fontFamily: 'Arial',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                '411 terjual',
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    //Row 4
                    //Product Row 4
                    Row(
                      children: [
                        //Product 7
                        Container(
                          width: 170,
                          height: 170,
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Headset()),
                                  );
                                },
                                child: Image.asset(
                                  'image/headset.jpeg',
                                  width: 180,
                                  height: 90,
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text(
                                'Headset',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                'Rp. 300.000',
                                style: TextStyle(
                                  fontFamily: 'Arial',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                '120 terjual',
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                        //Product 8
                        Container(
                          width: 170,
                          height: 170,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => parfum()),
                                  );
                                },
                                child: Image.asset(
                                  'image/parfum.jpg',
                                  width: 180,
                                  height: 90,
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text(
                                'Parfum',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                'Rp. 250.000',
                                style: TextStyle(
                                  fontFamily: 'Arial',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                '610 terjual',
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }

  //Widget yang membuat page baru dari masing-masing kategori.
  Widget _buildCategoryCard(
      String judul, IconData ikon, VoidCallback onPressed) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              ikon,
              size: 30,
              color: Colors.red.shade600,
            ),
            SizedBox(height: 8),
            Text(
              judul,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToCategoryPage(BuildContext context, String category) {
    switch (category) {
      case 'Elektronik':
        //Navigasi Elektronik
        Navigator.push(
          context,
          MaterialPageRoute(
            //Memanggil class Elektronik
            builder: (context) => Elektronik(),
          ),
        );
        break;

      case 'Pakaian':
        //Navigasi Pakaian
        Navigator.push(
          context,
          MaterialPageRoute(
            //Memanggil class Pakaian
            builder: (context) => Pakaian(),
          ),
        );
        break;

      case 'Kecantikan':
        //Navigasi Kecantikan
        Navigator.push(
          context,
          MaterialPageRoute(
            //Memanggil class Kecantikan
            builder: (context) => Kecantikan(),
          ),
        );
        break;
      case 'Makanan & Minuman':
        //Navigasi MakananMinuman
        Navigator.push(
          context,
          MaterialPageRoute(
            //Memanggil class MakananMinuman
            builder: (context) => MakananMinuman(),
          ),
        );
        break;
      default:
        break;
    }
  }
}

//informasi kategori untuk title dan icon CategoryModel
class CategoryModel {
  final String title;
  final IconData icon;
  //membuat instance CategoryModel dengan title dan icon
  CategoryModel(this.title, this.icon);
}
