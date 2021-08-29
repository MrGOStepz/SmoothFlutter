import 'package:smooth/services/db/column_name.dart';
import 'package:smooth/services/db/table_name.dart';

class IngredientSQL {
  static const String sqlGetAllIngredient = "SELECT * FROM ${TableDB.tableIngredient}";
  static const String sqlAddIngredient = "INSERT INTO ${TableDB.tableIngredient} (${ColumnDB.colIngredientName}, ${ColumnDB.colIngredientImagePath}) VALUE(?,?)";
  static const String sqlUpdateIngredient = "UPDATE ${TableDB.tableIngredient} SET ${ColumnDB.colIngredientName}, ${ColumnDB.colIngredientImagePath} = ? WHERE ${ColumnDB.colIngredientId} = ?";
  static const String sqlDeleteIngredient = "DELETE FROM ${TableDB.tableIngredient} WHERE ${ColumnDB.colIngredientId} = ?";
}

