import 'package:test4/searchProduct/searchpage.dart';

class LeMineral extends Item {
  LeMineral(String name, String imagePath, double price)
      : super(
          name,
          imagePath,
          price,
          description: 'Air mineral Le Mineral dengan kandungan mineral yang baik untuk tubuh.',
          features: ['Kaya akan mineral', 'Meningkatkan hidrasi', 'Cocok untuk gaya hidup aktif'],
        );
}