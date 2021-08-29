import 'package:smooth/services/db/column_name.dart';
import 'package:smooth/services/db/table_name.dart';

class LocationMenuSQL {
  static const String sqlGetAllLocationMenu = "SELECT * FROM ${TableDB.tableLocationMenu}";
  static const String sqlAddLocationMenu = 'INSERT INTO ${TableDB.tableLocationMenu} (${ColumnDB.colFirstName}, ${ColumnDB.colLastName}, ${ColumnDB.colPhone}, ${ColumnDB.colEmail}, ${ColumnDB.colAddress}, ${ColumnDB.colTotalOrder}, ${ColumnDB.colLastActive}, ${ColumnDB.colDateOfBirth}, ${ColumnDB.colCard},  ${ColumnDB.colIsActive}) VALUE(?,?,?,?,?,?,?,?,?,?)';
  static const String sqlUpdateLocationMenu = "UPDATE ${TableDB.tableLocationMenu} SET ${ColumnDB.colFirstName} = ?, ${ColumnDB.colLastName} = ?, ${ColumnDB.colPhone} = ?, ${ColumnDB.colEmail} = ?,  ${ColumnDB.colAddress} = ?, ${ColumnDB.colTotalOrder} = ?, ${ColumnDB.colLastActive} = ? ${ColumnDB.colDateOfBirth} = ?, ${ColumnDB.colCard} = ?, ${ColumnDB.colIsActive} = ? WHERE ${ColumnDB.colLocationMenuId} = ?";
  static const String sqlDeleteLocationMenu = "DELETE FROM ${TableDB.tableLocationMenu} WHERE ${ColumnDB.colLocationMenuId} = ?";
}
