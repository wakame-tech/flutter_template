// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'signin_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SignInPageState _$SignInPageStateFromJson(Map<String, dynamic> json) {
  return _SignInPageState.fromJson(json);
}

/// @nodoc
class _$SignInPageStateTearOff {
  const _$SignInPageStateTearOff();

// ignore: unused_element
  _SignInPageState call({String name = "", String password = ""}) {
    return _SignInPageState(
      name: name,
      password: password,
    );
  }

// ignore: unused_element
  SignInPageState fromJson(Map<String, Object> json) {
    return SignInPageState.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SignInPageState = _$SignInPageStateTearOff();

/// @nodoc
mixin _$SignInPageState {
  String get name;
  String get password;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $SignInPageStateCopyWith<SignInPageState> get copyWith;
}

/// @nodoc
abstract class $SignInPageStateCopyWith<$Res> {
  factory $SignInPageStateCopyWith(
          SignInPageState value, $Res Function(SignInPageState) then) =
      _$SignInPageStateCopyWithImpl<$Res>;
  $Res call({String name, String password});
}

/// @nodoc
class _$SignInPageStateCopyWithImpl<$Res>
    implements $SignInPageStateCopyWith<$Res> {
  _$SignInPageStateCopyWithImpl(this._value, this._then);

  final SignInPageState _value;
  // ignore: unused_field
  final $Res Function(SignInPageState) _then;

  @override
  $Res call({
    Object name = freezed,
    Object password = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

/// @nodoc
abstract class _$SignInPageStateCopyWith<$Res>
    implements $SignInPageStateCopyWith<$Res> {
  factory _$SignInPageStateCopyWith(
          _SignInPageState value, $Res Function(_SignInPageState) then) =
      __$SignInPageStateCopyWithImpl<$Res>;
  @override
  $Res call({String name, String password});
}

/// @nodoc
class __$SignInPageStateCopyWithImpl<$Res>
    extends _$SignInPageStateCopyWithImpl<$Res>
    implements _$SignInPageStateCopyWith<$Res> {
  __$SignInPageStateCopyWithImpl(
      _SignInPageState _value, $Res Function(_SignInPageState) _then)
      : super(_value, (v) => _then(v as _SignInPageState));

  @override
  _SignInPageState get _value => super._value as _SignInPageState;

  @override
  $Res call({
    Object name = freezed,
    Object password = freezed,
  }) {
    return _then(_SignInPageState(
      name: name == freezed ? _value.name : name as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_SignInPageState implements _SignInPageState {
  const _$_SignInPageState({this.name = "", this.password = ""})
      : assert(name != null),
        assert(password != null);

  factory _$_SignInPageState.fromJson(Map<String, dynamic> json) =>
      _$_$_SignInPageStateFromJson(json);

  @JsonKey(defaultValue: "")
  @override
  final String name;
  @JsonKey(defaultValue: "")
  @override
  final String password;

  @override
  String toString() {
    return 'SignInPageState(name: $name, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInPageState &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$SignInPageStateCopyWith<_SignInPageState> get copyWith =>
      __$SignInPageStateCopyWithImpl<_SignInPageState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SignInPageStateToJson(this);
  }
}

abstract class _SignInPageState implements SignInPageState {
  const factory _SignInPageState({String name, String password}) =
      _$_SignInPageState;

  factory _SignInPageState.fromJson(Map<String, dynamic> json) =
      _$_SignInPageState.fromJson;

  @override
  String get name;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$SignInPageStateCopyWith<_SignInPageState> get copyWith;
}
