import 'package:smooth/model/product/popup_model.dart';
import 'package:smooth/model/product/product_ingredient_model.dart';
import 'package:smooth/model/type/food_type_model.dart';

class Product {
  late int id;
  late String name;
  late String description;
  var productIngredient = ProductIngredient();
  var popup = Popup();
  var foodType = FoodType();
  int stock = 0;
  double price = 0;
  late String imagePath;
  int isActive = 1;
}