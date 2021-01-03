// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'preferences_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PreferencesState _$PreferencesStateFromJson(Map<String, dynamic> json) {
  return Data.fromJson(json);
}

/// @nodoc
class _$PreferencesStateTearOff {
  const _$PreferencesStateTearOff();

// ignore: unused_element
  Data call({@nullable AppTheme theme}) {
    return Data(
      theme: theme,
    );
  }

// ignore: unused_element
  PreferencesState fromJson(Map<String, Object> json) {
    return PreferencesState.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PreferencesState = _$PreferencesStateTearOff();

/// @nodoc
mixin _$PreferencesState {
  @nullable
  AppTheme get theme;

  Map<String, dynamic> toJson();
  $PreferencesStateCopyWith<PreferencesState> get copyWith;
}

/// @nodoc
abstract class $PreferencesStateCopyWith<$Res> {
  factory $PreferencesStateCopyWith(
          PreferencesState value, $Res Function(PreferencesState) then) =
      _$PreferencesStateCopyWithImpl<$Res>;
  $Res call({@nullable AppTheme theme});
}

/// @nodoc
class _$PreferencesStateCopyWithImpl<$Res>
    implements $PreferencesStateCopyWith<$Res> {
  _$PreferencesStateCopyWithImpl(this._value, this._then);

  final PreferencesState _value;
  // ignore: unused_field
  final $Res Function(PreferencesState) _then;

  @override
  $Res call({
    Object theme = freezed,
  }) {
    return _then(_value.copyWith(
      theme: theme == freezed ? _value.theme : theme as AppTheme,
    ));
  }
}

/// @nodoc
abstract class $DataCopyWith<$Res> implements $PreferencesStateCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  @override
  $Res call({@nullable AppTheme theme});
}

/// @nodoc
class _$DataCopyWithImpl<$Res> extends _$PreferencesStateCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(Data _value, $Res Function(Data) _then)
      : super(_value, (v) => _then(v as Data));

  @override
  Data get _value => super._value as Data;

  @override
  $Res call({
    Object theme = freezed,
  }) {
    return _then(Data(
      theme: theme == freezed ? _value.theme : theme as AppTheme,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$Data implements Data {
  const _$Data({@nullable this.theme});

  factory _$Data.fromJson(Map<String, dynamic> json) => _$_$DataFromJson(json);

  @override
  @nullable
  final AppTheme theme;

  @override
  String toString() {
    return 'PreferencesState(theme: $theme)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Data &&
            (identical(other.theme, theme) ||
                const DeepCollectionEquality().equals(other.theme, theme)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(theme);

  @override
  $DataCopyWith<Data> get copyWith =>
      _$DataCopyWithImpl<Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$DataToJson(this);
  }
}

abstract class Data implements PreferencesState {
  const factory Data({@nullable AppTheme theme}) = _$Data;

  factory Data.fromJson(Map<String, dynamic> json) = _$Data.fromJson;

  @override
  @nullable
  AppTheme get theme;
  @override
  $DataCopyWith<Data> get copyWith;
}
