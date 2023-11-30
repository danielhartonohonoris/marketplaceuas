import 'package:flutter/material.dart';

class Kecantikan extends StatefulWidget {
  @override
  State<Kecantikan> createState() => _KecantikanState();
}

class _KecantikanState extends State<Kecantikan> {
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
        title: Text('Kecantikan'),
        backgroundColor: Colors.red.shade600,
      ),
      body: ListView(
        children: [
          CardItem(
            key: cardItemKey1,
            imageAsset: 'image/exfoliater.jpeg',
            title: 'Exfoliater',
            description: 'Exfoliator adalah produk perawatan kulit yang dirancang untuk mengangkat sel-sel kulit mati dari permukaan kulit. Dengan menggunakan butiran halus atau bahan kimia tertentu, exfoliator membantu menghilangkan lapisan sel-sel kulit mati, menyegarkan kulit, dan meningkatkan penyerapan produk perawatan kulit lainnya. Proses eksfoliasi ini dapat meningkatkan tekstur kulit, menyamarkan noda gelap, dan memberikan kulit tampilan yang lebih cerah dan sehat. Penting untuk memilih exfoliator yang sesuai dengan jenis kulit Anda dan menggunakan produk ini secara teratur untuk merawat kulit dengan efektif.',
            onBeliSekarang: () {

              setState(() {});
            },
          ),
          SizedBox(height: 1), 
          CardItem(
            key: cardItemKey2,
            imageAsset: 'image/eyebrush.png',
            title: 'Eyebrush',
            description: 'Eyebrush adalah alat makeup yang dirancang khusus untuk pengaplikasian produk eye makeup, seperti eyeshadow, eyeliner, dan maskara. Dengan desain yang presisi dan seringkali dilengkapi dengan bulu sikat yang lembut, Eyebrush membantu menciptakan tampilan mata yang terdefinisi dan cantik. Pengguna dapat dengan mudah mengaplikasikan dan menyatukan warna eyeshadow, memberikan akurasi dalam menggambar garis eyeliner, atau merapikan bulu mata dengan maskara. Eyebrush hadir dalam berbagai bentuk dan ukuran untuk memenuhi kebutuhan beragam tata rias mata. Alat ini menjadi pilihan utama bagi para pecinta makeup yang ingin menciptakan tampilan mata yang profesional.',
            onBeliSekarang: () {
              setState(() {});
            },
          ),
          SizedBox(height: 1),
          CardItem(
            key: cardItemKey3,
            imageAsset: 'image/eyeliner.jpeg',
            title: 'Eyeliner',
            description: 'Eyeliner adalah produk makeup yang digunakan untuk menggambar garis pada kelopak mata, memberikan definisi dan penekanan pada mata. Tersedia dalam berbagai bentuk, seperti pensil, cair, atau gel, eyeliner memungkinkan pengguna untuk menciptakan berbagai gaya, mulai dari tampilan natural hingga dramatis. Dengan aplikasi yang tepat, eyeliner dapat meningkatkan bentuk mata, membuat mata terlihat lebih besar, dan menciptakan tampilan yang tajam atau lembut sesuai keinginan. Eyeliner sering digunakan sebagai elemen utama dalam tata rias mata dan menjadi alat penting untuk mencapai penampilan yang menarik dan ekspresif.',
            onBeliSekarang: () {
              setState(() {});
            },
          ),
          SizedBox(height: 1),
          CardItem(
            key: cardItemKey4,
            imageAsset: 'image/foundation.jpeg',
            title: 'Foundation',
            description: 'Foundation adalah produk makeup dasar yang digunakan untuk menyamarkan ketidaksempurnaan kulit dan menciptakan dasar yang rata sebelum pengaplikasian makeup lainnya. Tersedia dalam bentuk cair, krim, atau bubuk, foundation membantu menyamarkan noda, meratakan warna kulit, dan memberikan tampilan kulit yang lebih halus. Pengguna dapat memilih foundation sesuai dengan jenis kulit dan preferensi mereka, mulai dari foundation ringan untuk tampilan alami hingga foundation penuh daya tutup untuk tampilan yang lebih dramatis. Pilihan warna yang sesuai dengan warna kulit individu membantu mencapai tampilan yang seimbang dan alami. Foundation umumnya digunakan sebagai langkah awal dalam rutinitas makeup untuk menciptakan dasar yang sempurna sebelum pengaplikasian produk makeup lainnya.',
            onBeliSekarang: () {
              setState(() {});
            },
          ),
          SizedBox(height: 1),
          CardItem(
            key: cardItemKey5,
            imageAsset: 'image/lipbalm.jpeg',
            title: 'Lipbalm',
            description: 'Lip balm adalah produk perawatan bibir yang dirancang untuk memberikan kelembapan, perlindungan, dan kelembutan pada bibir. Dengan formula yang umumnya mengandung bahan-bahan seperti lilin lebah, minyak esensial, dan pelembap, lip balm membantu mencegah bibir kering, pecah-pecah, atau pecah-pecah karena kondisi cuaca atau kekeringan. Selain memberikan perawatan dasar, lip balm juga seringkali memberikan sentuhan warna ringan atau kilau untuk memberikan tampilan yang segar dan alami pada bibir. Ukuran lip balm yang kecil dan mudah dibawa membuatnya menjadi aksesori kecantikan yang praktis, memungkinkan pengguna untuk menjaga kelembutan bibir di mana pun mereka berada.',
            onBeliSekarang: () {
              setState(() {});
            },
          ),
          SizedBox(height: 1),
          CardItem(
            key: cardItemKey6,
            imageAsset: 'image/lipstik.jpeg',
            title: 'Lipstick',
            description: 'Lipstik adalah produk kecantikan yang digunakan untuk memberikan warna pada bibir dan meningkatkan penampilan wajah. Tersedia dalam berbagai bentuk, termasuk batang, cair, atau krim, lipstik memiliki formula yang dirancang untuk memberikan warna intens, tahan lama, dan seringkali kelembutan pada bibir. Lipstik dapat ditemukan dalam berbagai pilihan warna dan finish, mulai dari matte hingga glossy. Selain memberikan sentuhan estetika pada bibir, lipstik juga dapat meningkatkan rona wajah secara keseluruhan. Ini adalah salah satu produk makeup yang populer digunakan untuk mengekspresikan gaya pribadi dan memberikan tampilan yang lebih berkilau.',
            onBeliSekarang: () {
              setState(() {});
            },
          ),
          SizedBox(height: 1),
          CardItem(
            key: cardItemKey7,
            imageAsset: 'image/liptint.jpeg',
            title: 'Liptint',
            description: 'Lip tint, atau liptint, adalah produk kecantikan untuk bibir yang memberikan warna alami dan tahan lama. Dengan formula cair atau gel yang ringan, liptint memberikan sentuhan ringan pada bibir sehingga terlihat alami dan merona. Biasanya diaplikasikan dengan aplikator sikat atau ujung jari, liptint memberikan hasil yang lebih sheer dibandingkan dengan lipstik, menciptakan tampilan bibir yang tetap terlihat segar dan hidup.',
            onBeliSekarang: () {
              setState(() {});
            },
          ),
          SizedBox(height: 1),
          CardItem(
            key: cardItemKey8,
            imageAsset: 'image/maskara.jpeg',
            title: 'Maskara',
            description: 'Maskara adalah produk kecantikan untuk mata yang digunakan untuk memberikan definisi, panjang, dan volume pada bulu mata. Maskara biasanya hadir dalam kemasan tabung dengan aplikator berbentuk sikat atau kuas. Dengan formula yang dapat memberikan pigmen warna dan umumnya mengandung bahan-bahan seperti lilin dan pigmen pewarna, maskara memberikan efek memanjang, memisahkan, dan memberikan warna pada bulu mata.',
            onBeliSekarang: () {
              setState(() {});
            },
          ),
          SizedBox(height: 1),
          CardItem(
            key: cardItemKey9,
            imageAsset: 'image/moisturizer.jpeg',
            title: 'Moisturizer',
            description: 'Moisturizer, atau pelembap, adalah produk perawatan kulit yang dirancang untuk memberikan kelembapan dan menjaga keseimbangan hidrasi kulit. Dengan formula yang beragam, moisturizer dapat berupa krim, lotion, gel, atau minyak, tergantung pada jenis kulit dan preferensi pengguna. Fungsi utama moisturizer adalah menjaga kelembaban alami kulit, mencegah kekeringan, dan memberikan perlindungan dari pengaruh lingkungan.',
            onBeliSekarang: () {
              setState(() {});
            },
          ),
          SizedBox(height: 1),
          CardItem(
            key: cardItemKey10,
            imageAsset: 'image/sunscreen.jpeg',
            title: 'Sunscreen',
            description: 'Sunscreen, atau tabir surya, adalah produk perawatan kulit yang dirancang untuk melindungi kulit dari radiasi UV (ultraviolet) yang dapat menyebabkan kerusakan pada kulit. Sunscreen bekerja dengan memberikan lapisan pelindung pada kulit yang menghalangi atau menyerap sinar UV, membantu mencegah terjadinya sunburn, penuaan dini, dan risiko kanker kulit.',
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
        title: Text('Detail Barang Kecantikan'),
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

class CartItem {
  final String title;
  final String imageAsset;
  final String description;

  CartItem({
    required this.title,
    required this.imageAsset,
    required this.description,
  });
}

void main() {
  runApp(MaterialApp(
    home: Kecantikan(),
  ));
}
