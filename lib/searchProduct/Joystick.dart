import 'package:test4/searchProduct/searchpage.dart';

class Joystick extends Item {
  Joystick(String name, String imagePath, double price)
      : super(
          name,
          imagePath,
          price,
          description: 'Joystick gaming dengan kontrol presisi untuk pengalaman bermain yang maksimal.',
          features: ['Kontrol analog presisi', 'Desain elegan', 'Kompatibel dengan berbagai platform'],
        );
}
