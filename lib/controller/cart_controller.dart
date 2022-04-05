import 'package:food_store_app/models/product.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  List<Product> products = [].obs as List<Product>;
  void addToCart(Product product) {
    products.add(product);
  }

  void removeFromCart(Product product) {
    products.removeAt(products.indexOf(product));
  }
}
