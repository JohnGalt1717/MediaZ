// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'environment.dart';
import '../preferences/preferences_cubit.dart';
import 'dependancy_injection.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<SharedPreferences>(() => registerModule.preferences);

  // Eager singletons must be registered in the right order
  gh.singleton<EnvironmentSettings>(registerModule.environment);
  gh.singleton<PreferencesCubit>(PreferencesCubit(get<SharedPreferences>()));
  return get;
}

class _$RegisterModule extends RegisterModule {}
