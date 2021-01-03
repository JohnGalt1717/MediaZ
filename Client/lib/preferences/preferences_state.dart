import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mediaz/themes/app_themes.dart';

part 'preferences_state.freezed.dart';
part 'preferences_state.g.dart';

@freezed
abstract class PreferencesState with _$PreferencesState {
  const factory PreferencesState({@nullable AppTheme theme}) = Data;

  factory PreferencesState.fromJson(Map<String, dynamic> json) =>
      _$PreferencesStateFromJson(json);
}
