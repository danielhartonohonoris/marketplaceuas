import 'package:test4/searchProduct/searchpage.dart';

class HpOppo extends Item {
  HpOppo(String name, String imagePath, double price)
      : super(
          name,
          imagePath,
          price,
          description: 'Smartphone Oppo dengan kinerja canggih dan desain elegan.',
          features: ['Kamera berkualitas tinggi', 'Baterai tahan lama', 'Layar yang besar'],
        );
}