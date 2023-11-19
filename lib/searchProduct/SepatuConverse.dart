import 'package:test4/searchProduct/searchpage.dart';

class SepatuConverse extends Item {
  SepatuConverse(String name, String imagePath, double price)
      : super(
          name,
          imagePath,
          price,
          description: 'Sepatu casual Converse yang nyaman digunakan sehari-hari.',
          features: ['Desain Elegan', 'Nyaman di kaki', 'Tidak mudah rusak'],
        );
}