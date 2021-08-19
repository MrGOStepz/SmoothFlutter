import 'package:smooth/models/products/popup_model.dart';
import 'package:smooth/models/types/food_type_model.dart';

class Product {
  late int id;
  late String name;
  String? description;
  var productIngredient = ProductIngredient();
  var popup = Popup();
  var foodType = FoodType();
  int stock = 0;
  double price = 0;
  String? imagePath;
  int isActive = 1;
}

class ProductIngredient {
  late int id;
  late String name;
}
