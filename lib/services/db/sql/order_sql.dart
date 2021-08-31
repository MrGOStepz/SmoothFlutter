import 'package:smooth/services/db/column_name.dart';
import 'package:smooth/services/db/table_name.dart';

class OrderSQL {
  static const String sqlGetAllOrder = "SELECT * FROM ${TableDB.tableOrder}";
  static const String sqlAddOrder = "INSERT INTO ${TableDB.tableOrder} (${ColumnDB.colOrderAt}, ${ColumnDB.colOrderTypeId}, ${ColumnDB.colStaffId}, ${ColumnDB.colTableSectionId}, ${ColumnDB.colOrderStatusId}, ${ColumnDB.colPaymentTypeId}, ${ColumnDB.colCustomerId}, ${ColumnDB.colIsActive}) VALUE(?,?,?,?,?,?,?,?)";
  static const String sqlUpdateOrder = "UPDATE ${TableDB.tableOrder} SET ${ColumnDB.colOrderAt} = ?, ${ColumnDB.colOrderTypeId} = ?, ${ColumnDB.colStaffId} = ?, ${ColumnDB.colTableSectionId} = ?, ${ColumnDB.colOrderStatusId} = ?, ${ColumnDB.colPaymentTypeId} = ?, ${ColumnDB.colCustomerId} = ?, ${ColumnDB.colIsActive} = ? WHERE ${ColumnDB.colOrderId} = ?";
  static const String sqlDeleteOrder = "DELETE FROM ${TableDB.tableOrder} WHERE ${ColumnDB.colOrderId} = ?";
}

