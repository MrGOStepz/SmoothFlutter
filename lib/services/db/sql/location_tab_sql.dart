import 'package:smooth/services/db/column_name.dart';
import 'package:smooth/services/db/table_name.dart';

class LocationTabSQL {
  static const String sqlGetAllLocationTab = "SELECT * FROM ${TableDB.tableLocationTab}";
  static const String sqlAddLocationTab = "INSERT INTO ${TableDB.tableLocationTab} (${ColumnDB.colLocationTabName}, ${ColumnDB.colLocationOrder}, ${ColumnDB.colLocationModeId}, ${ColumnDB.colIsActive}) VALUE(?,?,?,?,?)";
  static const String sqlUpdateLocationTab = "UPDATE ${TableDB.tableLocationTab} SET ${ColumnDB.colLocationTabName} = ?, ${ColumnDB.colLocationOrder} = ?, ${ColumnDB.colLocationModeId} = ?, ${ColumnDB.colIsActive} = ? WHERE ${ColumnDB.colLocationTabId} = ?";
  static const String sqlDeleteLocationTab = "DELETE FROM ${TableDB.tableLocationTab} WHERE ${ColumnDB.colLocationTabId} = ?";
}
