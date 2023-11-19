import 'package:test4/searchProduct/searchpage.dart';

class Parfum extends Item {
  Parfum(String name, String imagePath, double price)
      : super(
          name,
          imagePath,
          price,
          description: 'Parfum dengan aroma mewah dan tahan lama untuk meningkatkan kepercayaan diri Anda.',
          features: ['Aroma eksklusif', 'Tahan lama', 'Botol elegan'],
        );
}