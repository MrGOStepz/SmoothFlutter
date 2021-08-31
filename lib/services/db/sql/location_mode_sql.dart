import 'package:smooth/services/db/column_name.dart';
import 'package:smooth/services/db/table_name.dart';

class LocationModeSQL {
  static const String sqlGetAllLocationMode = "SELECT * FROM ${TableDB.tableLocationMode}";
  static const String sqlAddLocationMode = "INSERT INTO ${TableDB.tableLocationMode} (${ColumnDB.colLocationModeName}, ${ColumnDB.colLocationModeOrder}, ${ColumnDB.colIsActive}) VALUE(?,?,?,?,?,?,?)";
  static const String sqlUpdateLocationMode = "UPDATE ${TableDB.tableLocationMode} SET ${ColumnDB.colProductId} = ?, ${ColumnDB.colLocationTabId} = ?, ${ColumnDB.colColumnNo} = ?,  ${ColumnDB.colRowNo} = ?, ${ColumnDB.colIsActive} = ? WHERE ${ColumnDB.colLocationModeId} = ?";
  static const String sqlDeleteLocationMode = "DELETE FROM ${TableDB.tableLocationMode} WHERE ${ColumnDB.colLocationModeId} = ?";
}
