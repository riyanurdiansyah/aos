// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'default_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DefaultResponse _$DefaultResponseFromJson(Map<String, dynamic> json) {
  return _DefaultResponse.fromJson(json);
}

/// @nodoc
mixin _$DefaultResponse {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DefaultResponseCopyWith<DefaultResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DefaultResponseCopyWith<$Res> {
  factory $DefaultResponseCopyWith(
          DefaultResponse value, $Res Function(DefaultResponse) then) =
      _$DefaultResponseCopyWithImpl<$Res, DefaultResponse>;
  @useResult
  $Res call({bool success, String message});
}

/// @nodoc
class _$DefaultResponseCopyWithImpl<$Res, $Val extends DefaultResponse>
    implements $DefaultResponseCopyWith<$Res> {
  _$DefaultResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DefaultResponseCopyWith<$Res>
    implements $DefaultResponseCopyWith<$Res> {
  factory _$$_DefaultResponseCopyWith(
          _$_DefaultResponse value, $Res Function(_$_DefaultResponse) then) =
      __$$_DefaultResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String message});
}

/// @nodoc
class __$$_DefaultResponseCopyWithImpl<$Res>
    extends _$DefaultResponseCopyWithImpl<$Res, _$_DefaultResponse>
    implements _$$_DefaultResponseCopyWith<$Res> {
  __$$_DefaultResponseCopyWithImpl(
      _$_DefaultResponse _value, $Res Function(_$_DefaultResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
  }) {
    return _then(_$_DefaultResponse(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DefaultResponse implements _DefaultResponse {
  const _$_DefaultResponse({required this.success, required this.message});

  factory _$_DefaultResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DefaultResponseFromJson(json);

  @override
  final bool success;
  @override
  final String message;

  @override
  String toString() {
    return 'DefaultResponse(success: $success, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DefaultResponse &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DefaultResponseCopyWith<_$_DefaultResponse> get copyWith =>
      __$$_DefaultResponseCopyWithImpl<_$_DefaultResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DefaultResponseToJson(
      this,
    );
  }
}

abstract class _DefaultResponse implements DefaultResponse {
  const factory _DefaultResponse(
      {required final bool success,
      required final String message}) = _$_DefaultResponse;

  factory _DefaultResponse.fromJson(Map<String, dynamic> json) =
      _$_DefaultResponse.fromJson;

  @override
  bool get success;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_DefaultResponseCopyWith<_$_DefaultResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
