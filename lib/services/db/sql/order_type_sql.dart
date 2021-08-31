import 'package:smooth/services/db/column_name.dart';
import 'package:smooth/services/db/table_name.dart';

class OrderTypeSQL {
  static const String sqlGetAllOrderType = "SELECT * FROM ${TableDB.tableOrderType}";
  static const String sqlAddOrderType = "INSERT INTO ${TableDB.tableOrderType} (${ColumnDB.colOrderTypeName}) VALUE(?)";
  static const String sqlUpdateOrderType = "UPDATE ${TableDB.tableOrderType} SET ${ColumnDB.colOrderTypeName} = ? WHERE ${ColumnDB.colOrderTypeId} = ?";
  static const String sqlDeleteOrderType = "DELETE FROM ${TableDB.tableOrderType} WHERE ${ColumnDB.colOrderTypeId} = ?";
}

