import 'package:smooth/services/db/column_name.dart';
import 'package:smooth/services/db/table_name.dart';

class CookStatusSQL {
  static const String sqlGetAllCookStatus = "SELECT * FROM ${TableDB.tableCookStatus}";
  static const String sqlAddCookStatus = "INSERT INTO ${TableDB.tableCookStatus} (${ColumnDB.colClockStatusName}) VALUE(?)";
  static const String sqlUpdateCookStatus = "UPDATE ${TableDB.tablePaymentType} SET ${ColumnDB.colClockStatusName} = ? WHERE ${ColumnDB.colClockStatusId} = ?";
  static const String sqlDeleteCookStatus = "DELETE FROM ${TableDB.tableCookStatus} WHERE ${ColumnDB.colClockStatusId} = ?";
}

