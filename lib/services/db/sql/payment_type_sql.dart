import 'package:smooth/services/db/column_name.dart';
import 'package:smooth/services/db/table_name.dart';

class PaymentTypeSQL {
  static const String sqlGetAllPaymentType = "SELECT * FROM ${TableDB.tablePaymentType}";
  static const String sqlAddPaymentType = "INSERT INTO ${TableDB.tablePaymentType} (${ColumnDB.colPaymentTypeName}) VALUE(?)";
  static const String sqlUpdatePaymentType = "UPDATE ${TableDB.tablePaymentType} SET ${ColumnDB.colPaymentTypeName} = ? WHERE ${ColumnDB.colPaymentTypeId} = ?";
  static const String sqlDeletePaymentType = "DELETE FROM ${TableDB.tablePaymentType} WHERE ${ColumnDB.colPaymentTypeId} = ?";
}
