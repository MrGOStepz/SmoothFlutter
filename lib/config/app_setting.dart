import 'package:smooth/config/database_config.dart';

class Configuration {
  Map<String, String> appSetting = {};
  Map<String, String> get() => appSetting;

  Configuration() {
    appSetting.addAll(databaseSetting);
  }

}