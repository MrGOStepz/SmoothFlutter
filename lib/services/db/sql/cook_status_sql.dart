import 'package:smooth/services/db/column_name.dart';
import 'package:smooth/services/db/table_name.dart';

class CookStatusSQL {
  static const String sqlGetAllCookStatus = "SELECT * FROM ${TableDB.tableCookStatus}";
  static const String sqlAddCookStatus = "INSERT INTO ${TableDB.tableCookStatus} (${ColumnDB.colCookStatusName}) VALUE(?)";
  static const String sqlUpdateCookStatus = "UPDATE ${TableDB.tableCookStatus} SET ${ColumnDB.colCookStatusName} = ? WHERE ${ColumnDB.colCookStatusId} = ?";
  static const String sqlDeleteCookStatus = "DELETE FROM ${TableDB.tableCookStatus} WHERE ${ColumnDB.colCookStatusId} = ?";
}

