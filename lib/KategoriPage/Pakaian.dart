import 'package:flutter/material.dart';

class Pakaian extends StatefulWidget {
  @override
  State<Pakaian> createState() => _PakaianState();
}

class _PakaianState extends State<Pakaian> {
  final GlobalKey<CardItemState> cardItemKey1 = GlobalKey<CardItemState>();
  final GlobalKey<CardItemState> cardItemKey2 = GlobalKey<CardItemState>();
  final GlobalKey<CardItemState> cardItemKey3 = GlobalKey<CardItemState>();
  final GlobalKey<CardItemState> cardItemKey4 = GlobalKey<CardItemState>();
  final GlobalKey<CardItemState> cardItemKey5 = GlobalKey<CardItemState>();
  final GlobalKey<CardItemState> cardItemKey6 = GlobalKey<CardItemState>();
  final GlobalKey<CardItemState> cardItemKey7 = GlobalKey<CardItemState>();
  final GlobalKey<CardItemState> cardItemKey8 = GlobalKey<CardItemState>();
  final GlobalKey<CardItemState> cardItemKey9 = GlobalKey<CardItemState>();
  final GlobalKey<CardItemState> cardItemKey10 = GlobalKey<CardItemState>();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade600,
        foregroundColor: Colors.white,
        title: Text('Pakaian'),
        backgroundColor: Colors.red.shade600,
      ),
      body: ListView(
        children: [
          CardItem(
            key: cardItemKey1,
            imageAsset: 'image/baju.jpg',
            title: 'Baju',
            description: 'Baju adalah pakaian atau garmen yang dikenakan untuk menutupi tubuh manusia. Pakaian dapat terdiri dari berbagai macam jenis dan gaya, termasuk atasan, bawahan, dan aksesori tambahan seperti jaket, mantel, atau rok.',
            onBeliSekarang: () {
              setState(() {});
            },
          ),
          SizedBox(height: 1),
          CardItem(
            key: cardItemKey2,
            imageAsset: 'image/celana dalam.jpeg',
            title: 'Celana Dalam Pria',
            description: 'Celana dalam pria adalah pakaian intim yang dirancang khusus untuk menutupi area genital dan panggul. Celana dalam pria umumnya terbuat dari bahan yang lembut dan elastis, seperti katun, spandex, atau campuran bahan lainnya. Fungsi utama celana dalam adalah memberikan dukungan dan perlindungan pada area genital serta menjaga kebersihan.',
            onBeliSekarang: () {
              setState(() {});
            },
          ),
          SizedBox(height: 1),
          CardItem(
            key: cardItemKey3,
            imageAsset: 'image/gaun.jpeg',
            title: 'Gaun',
            description: 'Gaun adalah pakaian yang umumnya terdiri dari potongan panjang yang mencakup bagian atas tubuh hingga pinggang atau pinggul dan kemudian meluas ke bagian bawah untuk menutupi kaki. Gaun dapat memiliki berbagai gaya, panjang, dan desain, membuatnya sesuai untuk berbagai acara dan kesempatan.',
            onBeliSekarang: () {
              setState(() {});
            },
          ),
          SizedBox(height: 1),
          CardItem(
            key: cardItemKey4,
            imageAsset: 'image/hijab.jpeg',
            title: 'Hijab',
            description: 'Hijab adalah pakaian atau penutup kepala yang digunakan oleh beberapa wanita Muslim sebagai bagian dari penampilan berpakaian sesuai dengan ajaran agama Islam. Penggunaan hijab bervariasi dan dapat mencakup berbagai gaya dan desain, tetapi umumnya mencakup penutup kepala, leher, dan dada.',
            onBeliSekarang: () {
              setState(() {});
            },
          ),
          SizedBox(height: 1),
          CardItem(
            key: cardItemKey5,
            imageAsset: 'image/hoodie.jpg',
            title: 'Hoodie',
            description: 'Hoodie adalah jenis pakaian yang memiliki kapuchon (hood) yang ditempatkan di bagian belakang dan biasanya dilengkapi dengan tali yang dapat disesuaikan. Hoodie umumnya terbuat dari bahan yang nyaman, seperti katun atau campuran bahan lainnya, dan sering memiliki kantong di bagian depan.',
            onBeliSekarang: () {
              setState(() {});
            },
          ),
          SizedBox(height: 1),
          CardItem(
            key: cardItemKey6,
            imageAsset: 'image/jaket.jpg',
            title: 'Jaket',
            description: 'Jaket adalah pakaian luar yang dirancang untuk memberikan perlindungan dan kenyamanan di berbagai kondisi cuaca. Jaket umumnya memiliki lengan dan dipakai di bagian atas pakaian lainnya. Jaket dapat terbuat dari berbagai bahan, termasuk kain ringan untuk musim panas dan bahan yang lebih tebal atau tahan air untuk musim dingin atau cuaca basah.',
            onBeliSekarang: () {
              setState(() {});
            },
          ),
          SizedBox(height: 1),
          CardItem(
            key: cardItemKey7,
            imageAsset: 'image/jeans.jpeg',
            title: 'Jeans',
            description: 'Jeans adalah jenis celana yang terbuat dari bahan denim, yang merupakan kain yang sangat tahan lama dan kuat. Celana jenis ini biasanya memiliki potongan lurus atau sedikit menyempit, dan mereka sering memiliki jahitan yang khas di sepanjang sisi. Jeans awalnya dirancang sebagai pakaian kerja untuk para pekerja, terutama para penambang dan petani, namun seiring berjalannya waktu, jeans menjadi sangat populer di kalangan masyarakat umum dan menjadi salah satu pakaian kasual paling umum.',
            onBeliSekarang: () {
              setState(() {});
            },
          ),
          SizedBox(height: 1),
          CardItem(
            key: cardItemKey8,
            imageAsset: 'image/kemeja.jpeg',
            title: 'Kemeja',
            description: 'Kemeja adalah pakaian yang umumnya terbuat dari kain ringan dan digunakan untuk menutupi tubuh bagian atas. Kemeja biasanya memiliki kancing di bagian depan, kerah yang dapat diangkat, dan lengan panjang atau pendek. Mereka dapat memiliki berbagai gaya, desain, dan potongan, yang membuatnya cocok untuk berbagai kesempatan, mulai dari formal hingga kasual.',
            onBeliSekarang: () {
              setState(() {});
            },
          ),
          SizedBox(height: 1),
          CardItem(
            key: cardItemKey9,
            imageAsset: 'image/kupluk.jpg',
            title: 'Kupluk',
            description: 'Kupluk adalah topi atau penutup kepala yang memiliki ekstensi berbentuk segitiga di bagian atas yang dapat meliputi leher, telinga, dan dahi. Kupluk sering kali memiliki ikat di bawah dagu untuk menjaga agar penutup kepala tetap di tempat, terutama dalam cuaca dingin atau berangin.',
            onBeliSekarang: () {
              setState(() {});
            },
          ),
          SizedBox(height: 1),
          CardItem(
            key: cardItemKey10,
            imageAsset: 'image/rok.jpeg',
            title: 'Rok',
            description: 'Rok adalah pakaian yang terdiri dari potongan kain berbentuk lingkaran atau lurus yang dipakai di bagian bawah tubuh, biasanya di sekitar pinggang atau pinggul. Rok dapat memiliki berbagai panjang, mulai dari yang sangat pendek hingga panjang hingga ke lantai. Rok umumnya dipakai oleh wanita, tetapi ada juga model-model rok yang dirancang untuk pria.',
            onBeliSekarang: () {
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}



class CardItem extends StatefulWidget {
  final String imageAsset;
  final String title;
  final String description;
  final VoidCallback? onBeliSekarang;

  const CardItem({
    Key? key,
    required this.imageAsset,
    required this.title,
    required this.description,
    this.onBeliSekarang,
  }) : super(key: key);

  @override
  State<CardItem> createState() => CardItemState();
}

class CardItemState extends State<CardItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.all(8),
      child: ListTile(
        leading: Hero(
          tag: widget.title,
          child: Image.asset(
            widget.imageAsset,
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(widget.title),
        onTap: () {
          RenderBox renderBox = context.findRenderObject() as RenderBox;
          Offset position = renderBox.localToGlobal(Offset.zero);
          widget.onBeliSekarang?.call();
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailBarangElektronik(
                imageAsset: widget.imageAsset,
                title: widget.title,
                description: widget.description,
              ),
            ),
          );
        },
      ),
    );
  }
}

class DetailBarangElektronik extends StatelessWidget {
  final String imageAsset;
  final String title;
  final String description;

  const DetailBarangElektronik({
    required this.imageAsset,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Barang Pakaian'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              imageAsset,
              width: 200, 
              height: 200, 
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Text(
              title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              description,
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}


void main() {
  runApp(MaterialApp(
    home: Pakaian(),
  ));
}