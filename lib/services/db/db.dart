import 'package:global_configuration/global_configuration.dart';
import 'package:mysql1/mysql1.dart';

class Database {
  final String _host = GlobalConfiguration().getValue("host");
  final int _port = int.parse(GlobalConfiguration().getValue("port"));
  final String _user = GlobalConfiguration().getValue("userName");
  final String _password = GlobalConfiguration().getValue("password");
  final String _databaseName = GlobalConfiguration().getValue("databaseName");

  static late MySqlConnection conn;

  Database._internal();
  static final Database _singleton = Database._internal();
  factory Database() {
    return _singleton;
  }

  Future<MySqlConnection> getConn() async {
    var settings = ConnectionSettings(
        host: _host,
        port: _port,
        user: _user,
        password: _password,
        db: _databaseName);
    return await MySqlConnection.connect(settings);
  }
}
