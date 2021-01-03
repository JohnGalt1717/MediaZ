import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:mediaz/main/environment.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'dependancy_injection.config.dart';

final getIt = GetIt.instance;
SharedPreferences _sharedPreferences;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
void configureServices() async {
  _sharedPreferences = await SharedPreferences.getInstance();
  $initGetIt(getIt,
      environment: EnvironmentSettings.getInstance().environment.toString());
}

@module
abstract class RegisterModule {
  SharedPreferences get preferences => _sharedPreferences;
  @singleton
  EnvironmentSettings get environment => EnvironmentSettings.getInstance();
}
