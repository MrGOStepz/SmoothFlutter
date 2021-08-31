import 'package:smooth/services/db/column_name.dart';
import 'package:smooth/services/db/table_name.dart';

class LocationMenuSQL {
  static const String sqlGetAllLocationMenu = "SELECT * FROM ${TableDB.tableLocationMenu}";
  static const String sqlAddLocationMenu = "INSERT INTO ${TableDB.tableLocationMenu} (${ColumnDB.colProductId}, ${ColumnDB.colLocationTabId}, ${ColumnDB.colColumnNo}, ${ColumnDB.colRowNo}, ${ColumnDB.colIsActive}) VALUE(?,?,?,?,?,?,?)";
  static const String sqlUpdateLocationMenu = "UPDATE ${TableDB.tableLocationMenu} SET ${ColumnDB.colLocationMenuId} = ?, ${ColumnDB.colProductId} = ?, ${ColumnDB.colLocationTabId} = ?, ${ColumnDB.colColumnNo} = ?,  ${ColumnDB.colRowNo} = ?, ${ColumnDB.colIsActive} = ? WHERE ${ColumnDB.colLocationMenuId} = ?";
  static const String sqlDeleteLocationMenu = "DELETE FROM ${TableDB.tableLocationMenu} WHERE ${ColumnDB.colLocationMenuId} = ?";
}
