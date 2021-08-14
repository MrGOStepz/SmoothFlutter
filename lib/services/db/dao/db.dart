import 'package:global_configuration/global_configuration.dart';
import 'package:mysql1/mysql1.dart';

class Database {
  // final String _host = GlobalConfiguration().getValue("host");
  // final int _port = int.parse(GlobalConfiguration().getValue("port"));
  // final String _user = GlobalConfiguration().getValue("userName");
  // final String _password = GlobalConfiguration().getValue("password");
  // final String _databaseName = GlobalConfiguration().getValue("databaseName");
  //
  var settings = ConnectionSettings(
      host: GlobalConfiguration().getValue("host"),
      port: int.parse(GlobalConfiguration().getValue("port")),
      user: GlobalConfiguration().getValue("userName"),
      password: GlobalConfiguration().getValue("password"),
      db: GlobalConfiguration().getValue("databaseName")
  );

  static late MySqlConnection conn;

  Database._internal();
  static final Database _singleton = Database._internal();
  factory Database() {
    return _singleton;
  }

  Future<MySqlConnection> getConn() async{
    return await MySqlConnection.connect(ConnectionSettings(
      host: '192.168.1.146',
      port: 3306,
      user: 'root',
      password: 'G4856162651o',
      db: 'smoothdb'
    ));
  }

}