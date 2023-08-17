// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  bool get isDark => throw _privateConstructorUsedError;
  RegisterResponseModel? get responseModel =>
      throw _privateConstructorUsedError;
  LoginResponseModel? get loginResponseModel =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {bool isDark,
      RegisterResponseModel? responseModel,
      LoginResponseModel? loginResponseModel,
      bool isLoading});

  $RegisterResponseModelCopyWith<$Res>? get responseModel;
  $LoginResponseModelCopyWith<$Res>? get loginResponseModel;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDark = null,
    Object? responseModel = freezed,
    Object? loginResponseModel = freezed,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      isDark: null == isDark
          ? _value.isDark
          : isDark // ignore: cast_nullable_to_non_nullable
              as bool,
      responseModel: freezed == responseModel
          ? _value.responseModel
          : responseModel // ignore: cast_nullable_to_non_nullable
              as RegisterResponseModel?,
      loginResponseModel: freezed == loginResponseModel
          ? _value.loginResponseModel
          : loginResponseModel // ignore: cast_nullable_to_non_nullable
              as LoginResponseModel?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RegisterResponseModelCopyWith<$Res>? get responseModel {
    if (_value.responseModel == null) {
      return null;
    }

    return $RegisterResponseModelCopyWith<$Res>(_value.responseModel!, (value) {
      return _then(_value.copyWith(responseModel: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LoginResponseModelCopyWith<$Res>? get loginResponseModel {
    if (_value.loginResponseModel == null) {
      return null;
    }

    return $LoginResponseModelCopyWith<$Res>(_value.loginResponseModel!,
        (value) {
      return _then(_value.copyWith(loginResponseModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthStateCopyWith(
          _$_AuthState value, $Res Function(_$_AuthState) then) =
      __$$_AuthStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isDark,
      RegisterResponseModel? responseModel,
      LoginResponseModel? loginResponseModel,
      bool isLoading});

  @override
  $RegisterResponseModelCopyWith<$Res>? get responseModel;
  @override
  $LoginResponseModelCopyWith<$Res>? get loginResponseModel;
}

/// @nodoc
class __$$_AuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthState>
    implements _$$_AuthStateCopyWith<$Res> {
  __$$_AuthStateCopyWithImpl(
      _$_AuthState _value, $Res Function(_$_AuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDark = null,
    Object? responseModel = freezed,
    Object? loginResponseModel = freezed,
    Object? isLoading = null,
  }) {
    return _then(_$_AuthState(
      isDark: null == isDark
          ? _value.isDark
          : isDark // ignore: cast_nullable_to_non_nullable
              as bool,
      responseModel: freezed == responseModel
          ? _value.responseModel
          : responseModel // ignore: cast_nullable_to_non_nullable
              as RegisterResponseModel?,
      loginResponseModel: freezed == loginResponseModel
          ? _value.loginResponseModel
          : loginResponseModel // ignore: cast_nullable_to_non_nullable
              as LoginResponseModel?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AuthState implements _AuthState {
  _$_AuthState(
      {required this.isDark,
      required this.responseModel,
      required this.loginResponseModel,
      required this.isLoading});

  @override
  final bool isDark;
  @override
  final RegisterResponseModel? responseModel;
  @override
  final LoginResponseModel? loginResponseModel;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'AuthState(isDark: $isDark, responseModel: $responseModel, loginResponseModel: $loginResponseModel, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            (identical(other.isDark, isDark) || other.isDark == isDark) &&
            (identical(other.responseModel, responseModel) ||
                other.responseModel == responseModel) &&
            (identical(other.loginResponseModel, loginResponseModel) ||
                other.loginResponseModel == loginResponseModel) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isDark, responseModel, loginResponseModel, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  factory _AuthState(
      {required final bool isDark,
      required final RegisterResponseModel? responseModel,
      required final LoginResponseModel? loginResponseModel,
      required final bool isLoading}) = _$_AuthState;

  @override
  bool get isDark;
  @override
  RegisterResponseModel? get responseModel;
  @override
  LoginResponseModel? get loginResponseModel;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
