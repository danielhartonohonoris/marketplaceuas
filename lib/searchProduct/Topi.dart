import 'package:test4/searchProduct/searchpage.dart';

class Topi extends Item {
  Topi(String name, String imagePath, double price)
      : super(
          name,
          imagePath,
          price,
          description: 'Topi trendy untuk gaya kasual yang menarik perhatian.',
          features: ['Desain bagus', 'Nyaman dipakai', 'Cocok untuk berbagai kesempatan'],
        );
}