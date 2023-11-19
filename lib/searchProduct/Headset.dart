import 'package:test4/searchProduct/searchpage.dart';

class Headset extends Item {
  Headset(String name, String imagePath, double price)
      : super(
          name,
          imagePath,
          price,
          description: 'Headset premium dengan kualitas suara yang bagus untuk pengalaman mendengarkan yang keren.',
          features: ['Suara berkualitas tinggi', 'Desain noise-canceling', 'Nyaman dipakai dalam waktu lama'],
        );
}