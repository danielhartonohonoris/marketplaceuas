import 'package:flutter/material.dart';

class Elektronik extends StatefulWidget {
  @override
  State<Elektronik> createState() => _ElektronikState();
}

class _ElektronikState extends State<Elektronik> {
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
        title: Text('Elektronik'),
        
      ),
      body: ListView(
        children: [
          CardItem(
            key: cardItemKey1,
            imageAsset: 'image/hp.jpg',
            title: 'Handphone',
            description: 'Hp ini dilengkapi dengan perangkat yang memadu dengan performa tinggi.',
            onBeliSekarang: () {
              setState(() {});
            },
          ),
          SizedBox(height: 1),
          CardItem(
            key: cardItemKey2,
            imageAsset: 'image/asusrog.jpg',
            title: 'Laptop',
            description: 'Laptop Asus ROG (Republic of Gamers) adalah perangkat komputasi khusus gaming yang memadukan performa tinggi dengan desain yang menawan. Ditenagai oleh prosesor dan kartu grafis terbaru, ROG memberikan pengalaman gaming yang mulus dan responsif. Desainnya yang futuristik, pencahayaan RGB yang dapat disesuaikan, dan sistem pendinginan canggih menunjukkan identitas gaming yang kuat. Layar berkualitas tinggi dengan tingkat refresh yang cepat meningkatkan kualitas visual, sementara fitur-fitur seperti audio gaming dan konektivitas tinggi menyempurnakan paket tersebut. Laptop Asus ROG dirancang untuk memenuhi kebutuhan para penggemar gaming yang mencari kombinasi performa tinggi dan gaya yang mencolok dalam satu perangkat.',
            onBeliSekarang: () {
              setState(() {});
            },
          ),
          SizedBox(height: 1),
          CardItem(
            key: cardItemKey3,
            imageAsset: 'image/kemara.jpeg',
            title: 'Kamera',
            description: 'Kamera adalah perangkat elektronik yang dirancang untuk merekam gambar dan video. Dengan sensor yang peka cahaya, kamera mampu mengabadikan momen-momen indah dalam bentuk foto atau rekaman. Fitur-fitur canggih seperti lensa yang dapat disesuaikan, kemampuan zoom, dan mode pengaturan khusus memungkinkan penggunanya untuk menangkap berbagai adegan dengan detail yang luar biasa. Desainnya yang kompak dan portabel membuat kamera menjadi alat yang praktis untuk fotografi sehari-hari atau petualangan. Dari kamera ponsel yang terintegrasi hingga kamera profesional dengan kontrol manual, berbagai jenis kamera hadir untuk memenuhi kebutuhan fotografi dan videografi pengguna modern.',
            onBeliSekarang: () {
              setState(() {});
            },
          ),
          SizedBox(height: 1),
          CardItem(
            key: cardItemKey4,
            imageAsset: 'image/printer.jpeg',
            title: 'Printer',
            description: 'Printer adalah perangkat elektronik yang dirancang untuk mencetak dokumen dan gambar dari komputer atau perangkat lainnya ke media kertas atau media cetak lainnya. Dengan teknologi cetak yang terus berkembang, printer modern dapat menghasilkan cetakan berkualitas tinggi dalam waktu singkat. Beberapa jenis printer termasuk printer inkjet, laser, dan dot matrix, masing-masing dengan kelebihan dan kegunaan khususnya. Printer juga dapat memiliki fitur tambahan seperti kemampuan nirkabel untuk mencetak dari perangkat seluler, kemampuan cetak warna, dan fungsionalitas scan atau copy. Desainnya yang kompak membuat printer menjadi alat yang mudah digunakan di berbagai lingkungan, dari kantor hingga rumah. Dengan berbagai model dan merek yang tersedia, printer memainkan peran penting dalam memenuhi kebutuhan pencetakan sehari-hari.',
            onBeliSekarang: () {
              setState(() {});
            },
          ),
          SizedBox(height: 1),
          CardItem(
            key: cardItemKey5,
            imageAsset: 'image/smartwatch.jpg',
            title: 'smartwatch',
            description: 'Realme Watch 3 adalah smartwatch yang menggabungkan gaya modern dengan berbagai fitur pintar untuk mendukung gaya hidup aktif. Dengan desain yang ringkas dan layar sentuh yang jernih, Realme Watch 3 memberikan tampilan yang stylish dan intuitif. Smartwatch ini dilengkapi dengan berbagai fungsi, termasuk pemantauan detak jantung, pelacakan aktivitas fisik, dan pemantauan tidur, sehingga penggunanya dapat mengelola kesehatan secara lebih baik.',
            onBeliSekarang: () {
              setState(() {});
            },
          ),
          SizedBox(height: 1),
          CardItem(
            key: cardItemKey6,
            imageAsset: 'image/speaker.jpeg',
            title: 'Speaker',
            description: 'Reloj despertador parlante Bluetooth G10 adalah perangkat serbaguna yang menggabungkan fungsionalitas jam alarm dengan kemampuan speaker Bluetooth. Dengan desain yang kompak dan elegan, jam alarm ini tidak hanya memberikan fungsi pengingat waktu tetapi juga memungkinkan pengguna untuk memutar musik dari perangkat Bluetooth mereka. G10 dilengkapi dengan fitur-fitur canggih seperti pengaturan alarm yang dapat disesuaikan, layar LED yang mudah dibaca, dan kemampuan menjawab panggilan telepon. Dengan teknologi Bluetooth, pengguna dapat menghubungkan perangkat mereka secara nirkabel untuk mendengarkan musik atau melakukan panggilan tanpa harus menyentuh ponsel mereka. G10 adalah solusi praktis dan multifungsi untuk kebutuhan alarm dan hiburan di kamar tidur atau ruang kerja.',
            onBeliSekarang: () {
              setState(() {});
            },
          ),
          SizedBox(height: 1), 
          CardItem(
            key: cardItemKey7,
            imageAsset: 'image/tablet.jpg',
            title: 'Tablet',
            description: 'Samsung Galaxy Tab S7/S7+ adalah tablet Android yang menawarkan kombinasi luar biasa antara desain elegan, performa tinggi, dan produktivitas tinggi. Dengan layar AMOLED yang besar dan tajam, kedua model ini memberikan pengalaman visual yang memukau, baik untuk hiburan maupun pekerjaan. Galaxy Tab S7/S7+ dilengkapi dengan stylus S Pen yang responsif, memungkinkan pengguna untuk menggambar, menulis, dan mengedit dengan presisi.',
            onBeliSekarang: () {
              setState(() {});
            },
          ),
          SizedBox(height: 1),
          CardItem(
            key: cardItemKey8,
            imageAsset: 'image/tv.jpeg',
            title: 'TV',
            description: 'Xiaomi Mi TV 43 adalah televisi pintar yang menawarkan pengalaman tontonan yang mengagumkan dengan layar LED berukuran 43 inci. Dengan resolusi tinggi Full HD, televisi ini memberikan gambar yang tajam dan warna yang hidup. Mi TV 43 juga dilengkapi dengan teknologi Dolby Audio dan DTS-HD, memberikan pengalaman audio berkualitas teater dalam ruangan.',
            onBeliSekarang: () {
              setState(() {});
            },
          ),
          SizedBox(height: 1),
          CardItem(
            key: cardItemKey9,
            imageAsset: 'image/tws.jpeg',
            title: 'TWS',
            description: 'TWS, atau True Wireless Stereo, adalah teknologi nirkabel yang menghilangkan kebutuhan untuk kabel pada perangkat audio, seperti earbuds atau earphones. Dengan TWS, earbuds kiri dan kanan dapat terhubung secara langsung satu sama lain dan ke perangkat sumber, seperti smartphone, melalui sinyal Bluetooth. Teknologi ini memberikan kebebasan gerak tanpa kabel yang mengganggu, menciptakan pengalaman mendengarkan musik atau menerima panggilan yang nyaman dan bebas hambatan. Earbuds TWS sering dilengkapi dengan fitur-fitur canggih seperti sentuhan atau kontrol suara, dan case pengisian daya untuk memperpanjang masa pakai baterai mereka.',
            onBeliSekarang: () {
              setState(() {});
            },
          ),
          SizedBox(height: 1),
          CardItem(
            key: cardItemKey10,
            imageAsset: 'image/headphone.jpeg',
            title: 'Headphone',
            description: 'Headphone Lenovo adalah perangkat audio yang menyajikan kualitas suara yang luar biasa dengan desain yang nyaman. Didesain dengan perhatian terhadap kenyamanan pengguna, headphone Lenovo menawarkan pengalaman mendengarkan musik atau menonton konten yang immersif. Dengan teknologi audio canggih, headphone ini menghadirkan suara yang jernih dan detail.',
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
        title: Text('Detail Barang Elektronik'),
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
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('$title ditambahkan ke keranjang belanja'),
                  ),
                );
              },
              child: Text('Add to Cart'),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Elektronik(),
  ));
}
