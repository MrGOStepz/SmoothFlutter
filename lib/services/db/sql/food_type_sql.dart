import 'package:smooth/services/db/column_name.dart';
import 'package:smooth/services/db/table_name.dart';

class FoodTypeSQL {
  static const String sqlGetAllFoodType = "SELECT * FROM ${TableDB.tableFoodType}";
  static const String sqlAddFoodType = "INSERT INTO ${TableDB.tableFoodType} (${ColumnDB.colFoodTypeName}) VALUE(?)";
  static const String sqlUpdateFoodType = "UPDATE ${TableDB.tablePaymentType} SET ${ColumnDB.colFoodTypeName} = ? WHERE ${ColumnDB.colFoodTypeId} = ?";
  static const String sqlDeleteFoodType = "DELETE FROM ${TableDB.tableFoodType} WHERE ${ColumnDB.colFoodTypeId} = ?";
}

