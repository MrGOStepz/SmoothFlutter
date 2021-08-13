import 'package:smooth/model/order/order_model.dart';
import 'package:smooth/model/product/popup_model.dart';
import 'package:smooth/model/product/product_model.dart';
import 'package:smooth/model/status/status_model.dart';

class OrderDetail {
  late int id;
  var product = Product();
  var popupItem = PopupItem();
  var order = Order();
  var cookStatus = CookStatus();
  int quality = 0;
  double price = 0;
  String? comment;
  int isActive = 1;
}
