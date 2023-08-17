// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterResponseModel _$RegisterResponseModelFromJson(
    Map<String, dynamic> json) {
  return _RegisterResponseModel.fromJson(json);
}

/// @nodoc
mixin _$RegisterResponseModel {
  String? get message => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterResponseModelCopyWith<RegisterResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterResponseModelCopyWith<$Res> {
  factory $RegisterResponseModelCopyWith(RegisterResponseModel value,
          $Res Function(RegisterResponseModel) then) =
      _$RegisterResponseModelCopyWithImpl<$Res, RegisterResponseModel>;
  @useResult
  $Res call({String? message, String? title, bool? isSuccess});
}

/// @nodoc
class _$RegisterResponseModelCopyWithImpl<$Res,
        $Val extends RegisterResponseModel>
    implements $RegisterResponseModelCopyWith<$Res> {
  _$RegisterResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? title = freezed,
    Object? isSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      isSuccess: freezed == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegisterResponseModelCopyWith<$Res>
    implements $RegisterResponseModelCopyWith<$Res> {
  factory _$$_RegisterResponseModelCopyWith(_$_RegisterResponseModel value,
          $Res Function(_$_RegisterResponseModel) then) =
      __$$_RegisterResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, String? title, bool? isSuccess});
}

/// @nodoc
class __$$_RegisterResponseModelCopyWithImpl<$Res>
    extends _$RegisterResponseModelCopyWithImpl<$Res, _$_RegisterResponseModel>
    implements _$$_RegisterResponseModelCopyWith<$Res> {
  __$$_RegisterResponseModelCopyWithImpl(_$_RegisterResponseModel _value,
      $Res Function(_$_RegisterResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? title = freezed,
    Object? isSuccess = freezed,
  }) {
    return _then(_$_RegisterResponseModel(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      isSuccess: freezed == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegisterResponseModel implements _RegisterResponseModel {
  _$_RegisterResponseModel(
      {required this.message, required this.title, required this.isSuccess});

  factory _$_RegisterResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_RegisterResponseModelFromJson(json);

  @override
  final String? message;
  @override
  final String? title;
  @override
  final bool? isSuccess;

  @override
  String toString() {
    return 'RegisterResponseModel(message: $message, title: $title, isSuccess: $isSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterResponseModel &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, title, isSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterResponseModelCopyWith<_$_RegisterResponseModel> get copyWith =>
      __$$_RegisterResponseModelCopyWithImpl<_$_RegisterResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterResponseModelToJson(
      this,
    );
  }
}

abstract class _RegisterResponseModel implements RegisterResponseModel {
  factory _RegisterResponseModel(
      {required final String? message,
      required final String? title,
      required final bool? isSuccess}) = _$_RegisterResponseModel;

  factory _RegisterResponseModel.fromJson(Map<String, dynamic> json) =
      _$_RegisterResponseModel.fromJson;

  @override
  String? get message;
  @override
  String? get title;
  @override
  bool? get isSuccess;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterResponseModelCopyWith<_$_RegisterResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
