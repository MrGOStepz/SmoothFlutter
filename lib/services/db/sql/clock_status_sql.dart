import 'package:smooth/services/db/column_name.dart';
import 'package:smooth/services/db/table_name.dart';

class ClockStatusSQL {
  static const String sqlGetAllClockStatus = "SELECT * FROM ${TableDB.tableClockStatus}";
  static const String sqlAddClockStatus = "INSERT INTO ${TableDB.tableClockStatus} (${ColumnDB.colClockStatusName}) VALUE(?)";
  static const String sqlUpdateClockStatus = "UPDATE ${TableDB.tableCookStatus} SET ${ColumnDB.colClockStatusName} = ? WHERE ${ColumnDB.colClockStatusId} = ?";
  static const String sqlDeleteClockStatus = "DELETE FROM ${TableDB.tableClockStatus} WHERE ${ColumnDB.colClockStatusId} = ?";
}

