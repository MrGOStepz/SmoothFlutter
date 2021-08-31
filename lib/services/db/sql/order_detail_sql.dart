import 'package:smooth/services/db/column_name.dart';
import 'package:smooth/services/db/table_name.dart';

class OrderDetailSQL {
  static const String sqlGetAllOrderDetail = "SELECT * FROM ${TableDB.tableOrderDetail}";
  static const String sqlAddOrderDetail = "INSERT INTO ${TableDB.tableOrderDetail} (${ColumnDB.colProductId}, ${ColumnDB.colPopupItemId}, ${ColumnDB.colOrderId}, ${ColumnDB.colProductQty}, ${ColumnDB.colPrice}, ${ColumnDB.colComment}, ${ColumnDB.colCookStatusId}, ${ColumnDB.colIsActive}) VALUE(?,?,?,?,?,?,?,?)";
  static const String sqlUpdateOrderDetail = "UPDATE ${TableDB.tableOrderDetail} SET ${ColumnDB.colProductId} = ?, ${ColumnDB.colPopupItemId} = ?, ${ColumnDB.colOrderId} = ?, ${ColumnDB.colProductQty} = ?, ${ColumnDB.colAmount} = ?, ${ColumnDB.colComment} = ?, ${ColumnDB.colCookStatusId} = ?, ${ColumnDB.colIsActive} = ? WHERE ${ColumnDB.colOrderDetailId} = ?";
  static const String sqlDeleteOrderDetail = "DELETE FROM ${TableDB.tableOrderDetail} WHERE ${ColumnDB.colOrderDetailId} = ?";
}

