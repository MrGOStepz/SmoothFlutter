import 'package:smooth/services/db/sql/table_name.dart';
import 'package:smooth/services/db/sql/column_name.dart';

class StaffSQL {
  static const String sqlGetAllStaff = "SELECT * FROM ${TableDB.tableStaff};";
  static const String sqlGetStaffById = "SELECT * FROM ${TableDB.tableStaff} WHERE ${ColumnDB.colStaffId} = ?;";
  static const String sqlGetStaffByPassword = "SELECT * FROM ${TableDB.tableStaff} WHERE ${ColumnDB.colPassword} = ?;";
  static const String sqlGetStaffByColumn = "SELECT ? FROM ${TableDB.tableStaff} WHERE ? = ?";
  static const String sqlAddStaff = 'INSERT INTO ${TableDB.tableStaff} (${ColumnDB.colFirstName}, ${ColumnDB.colLastName}, ${ColumnDB.colPhone}, ${ColumnDB.colEmail}, ${ColumnDB.colStaffPositionId}, ${ColumnDB.colClockStatusId}, ${ColumnDB.colPassword}, ${ColumnDB.colIsActive}) VALUE(?,?,?,?,?,?,?,?)';
  static const String sqlUpdateStaff = "UPDATE ${TableDB.tableStaff} SET ${ColumnDB.colFirstName} = ?, ${ColumnDB.colLastName} = ?, ${ColumnDB.colPhone} = ?, ${ColumnDB.colEmail} = ?, ${ColumnDB.colStaffPositionId} = ?, ${ColumnDB.colClockStatusId} = ?, ${ColumnDB.colPassword} = ?, ${ColumnDB.colIsActive} = ? WHERE ${ColumnDB.colStaffId} = ?";
  static const String sqlDeleteStaff = "DELETE FROM ${TableDB.tableStaff} WHERE ${ColumnDB.colStaffId} = ?;";
}