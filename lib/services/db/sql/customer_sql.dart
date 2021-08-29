import 'package:smooth/services/db/column_name.dart';
import 'package:smooth/services/db/table_name.dart';

class CustomerSQL {
  static const String sqlGetAllCustomer = "SELECT * FROM ${TableDB.tableCustomer}";
  static const String sqlGetCustomerById = "SELECT * FROM ${TableDB.tableCustomer} WHERE ${ColumnDB.colCustomerId} = ?";
  static const String sqlGetCustomerByColumn = "SELECT * FROM ${TableDB.tableCustomer} WHERE ? = ?";
  static const String sqlAddCustomer = 'INSERT INTO ${TableDB.tableCustomer} (${ColumnDB.colFirstName}, ${ColumnDB.colLastName}, ${ColumnDB.colPhone}, ${ColumnDB.colEmail}, ${ColumnDB.colAddress}, ${ColumnDB.colTotalOrder}, ${ColumnDB.colLastActive}, ${ColumnDB.colDateOfBirth}, ${ColumnDB.colCard},  ${ColumnDB.colIsActive}) VALUE(?,?,?,?,?,?,?,?,?,?)';
  static const String sqlUpdateCustomer = "UPDATE ${TableDB.tableCustomer} SET ${ColumnDB.colFirstName} = ?, ${ColumnDB.colLastName} = ?, ${ColumnDB.colPhone} = ?, ${ColumnDB.colEmail} = ?,  ${ColumnDB.colAddress} = ?, ${ColumnDB.colTotalOrder} = ?, ${ColumnDB.colLastActive} = ? ${ColumnDB.colDateOfBirth} = ?, ${ColumnDB.colCard} = ?, ${ColumnDB.colIsActive} = ? WHERE ${ColumnDB.colCustomerId} = ?";
  static const String sqlDeleteCustomer = "DELETE FROM ${TableDB.tableCustomer} WHERE ${ColumnDB.colCustomerId} = ?";
}
