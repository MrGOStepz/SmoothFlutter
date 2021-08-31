import 'package:smooth/services/db/column_name.dart';
import 'package:smooth/services/db/table_name.dart';

class OrderStatusSQL {
  static const String sqlGetAllOrderStatus = "SELECT * FROM ${TableDB.tableOrderStatus}";
  static const String sqlAddOrderStatus = "INSERT INTO ${TableDB.tableOrderStatus} (${ColumnDB.colOrderStatusName}) VALUE(?)";
  static const String sqlUpdateOrderStatus = "UPDATE ${TableDB.tableOrderStatus} SET ${ColumnDB.colOrderStatusName} = ? WHERE ${ColumnDB.colOrderStatusId} = ?";
  static const String sqlDeleteOrderStatus = "DELETE FROM ${TableDB.tableOrderStatus} WHERE ${ColumnDB.colOrderStatusId} = ?";
}

