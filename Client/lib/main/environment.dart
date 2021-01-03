import 'package:flutter/foundation.dart';

class EnvironmentSettings {
  final String apiUrl;
  final Environments environment;

  EnvironmentSettings({@required this.apiUrl, @required this.environment});

  static EnvironmentSettings _instance;

  static void create(
      {@required String apiUrl, @required Environments environment}) {
    _instance = EnvironmentSettings(apiUrl: apiUrl, environment: environment);
  }

  static EnvironmentSettings getInstance() => _instance;
}

enum Environments { Dev, Beta, Production }
