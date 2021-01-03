import 'dart:convert';

import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:mediaz/themes/app_themes.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'preferences_state.dart';

@singleton
class PreferencesCubit extends Cubit<PreferencesState> {
  final SharedPreferences _sharedPreferences;

  static const PREFERENCES_KEY = 'preferences';

  PreferencesCubit(this._sharedPreferences)
      : super(_sharedPreferences.containsKey(PREFERENCES_KEY)
            ? PreferencesState.fromJson(
                jsonDecode(_sharedPreferences.getString(PREFERENCES_KEY)))
            : PreferencesState());

  void setTheme({AppTheme theme}) {
    var newState = state.copyWith(theme: theme);

    _sharedPreferences.setString(
        PREFERENCES_KEY, jsonEncode(newState.toJson()));

    emit(newState);
  }
}
