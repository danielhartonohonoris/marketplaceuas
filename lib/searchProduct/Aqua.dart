import 'package:test4/searchProduct/searchpage.dart';

class Aqua extends Item {
  Aqua(String name, String imagePath, double price)
      : super(
          name,
          imagePath,
          price,
          description: 'Air minum Aqua dengan kualitas terbaik untuk menjaga kesehatan Anda.',
          features: ['Sumber air alami', 'Proses penyaringan yang ketat', 'Botol ramah lingkungan'],
        );
}