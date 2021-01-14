// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'api_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ApiResponseTearOff {
  const _$ApiResponseTearOff();

// ignore: unused_element
  Success<T> success<T>(
      {@required T data, int statusCode, String statusMessage}) {
    return Success<T>(
      data: data,
      statusCode: statusCode,
      statusMessage: statusMessage,
    );
  }

// ignore: unused_element
  Failure<T> failure<T>(
      {@required NetworkExceptions error,
      int statusCode,
      String statusMessage}) {
    return Failure<T>(
      error: error,
      statusCode: statusCode,
      statusMessage: statusMessage,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ApiResponse = _$ApiResponseTearOff();

/// @nodoc
mixin _$ApiResponse<T> {
  int get statusCode;
  String get statusMessage;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult success(T data, int statusCode, String statusMessage),
    @required
        TResult failure(
            NetworkExceptions error, int statusCode, String statusMessage),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult success(T data, int statusCode, String statusMessage),
    TResult failure(
        NetworkExceptions error, int statusCode, String statusMessage),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult success(Success<T> value),
    @required TResult failure(Failure<T> value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult success(Success<T> value),
    TResult failure(Failure<T> value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $ApiResponseCopyWith<T, ApiResponse<T>> get copyWith;
}

/// @nodoc
abstract class $ApiResponseCopyWith<T, $Res> {
  factory $ApiResponseCopyWith(
          ApiResponse<T> value, $Res Function(ApiResponse<T>) then) =
      _$ApiResponseCopyWithImpl<T, $Res>;
  $Res call({int statusCode, String statusMessage});
}

/// @nodoc
class _$ApiResponseCopyWithImpl<T, $Res>
    implements $ApiResponseCopyWith<T, $Res> {
  _$ApiResponseCopyWithImpl(this._value, this._then);

  final ApiResponse<T> _value;
  // ignore: unused_field
  final $Res Function(ApiResponse<T>) _then;

  @override
  $Res call({
    Object statusCode = freezed,
    Object statusMessage = freezed,
  }) {
    return _then(_value.copyWith(
      statusCode: statusCode == freezed ? _value.statusCode : statusCode as int,
      statusMessage: statusMessage == freezed
          ? _value.statusMessage
          : statusMessage as String,
    ));
  }
}

/// @nodoc
abstract class $SuccessCopyWith<T, $Res>
    implements $ApiResponseCopyWith<T, $Res> {
  factory $SuccessCopyWith(Success<T> value, $Res Function(Success<T>) then) =
      _$SuccessCopyWithImpl<T, $Res>;
  @override
  $Res call({T data, int statusCode, String statusMessage});
}

/// @nodoc
class _$SuccessCopyWithImpl<T, $Res> extends _$ApiResponseCopyWithImpl<T, $Res>
    implements $SuccessCopyWith<T, $Res> {
  _$SuccessCopyWithImpl(Success<T> _value, $Res Function(Success<T>) _then)
      : super(_value, (v) => _then(v as Success<T>));

  @override
  Success<T> get _value => super._value as Success<T>;

  @override
  $Res call({
    Object data = freezed,
    Object statusCode = freezed,
    Object statusMessage = freezed,
  }) {
    return _then(Success<T>(
      data: data == freezed ? _value.data : data as T,
      statusCode: statusCode == freezed ? _value.statusCode : statusCode as int,
      statusMessage: statusMessage == freezed
          ? _value.statusMessage
          : statusMessage as String,
    ));
  }
}

/// @nodoc
class _$Success<T> with DiagnosticableTreeMixin implements Success<T> {
  const _$Success({@required this.data, this.statusCode, this.statusMessage})
      : assert(data != null);

  @override
  final T data;
  @override
  final int statusCode;
  @override
  final String statusMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApiResponse<$T>.success(data: $data, statusCode: $statusCode, statusMessage: $statusMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ApiResponse<$T>.success'))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('statusCode', statusCode))
      ..add(DiagnosticsProperty('statusMessage', statusMessage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Success<T> &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.statusCode, statusCode) ||
                const DeepCollectionEquality()
                    .equals(other.statusCode, statusCode)) &&
            (identical(other.statusMessage, statusMessage) ||
                const DeepCollectionEquality()
                    .equals(other.statusMessage, statusMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(statusCode) ^
      const DeepCollectionEquality().hash(statusMessage);

  @JsonKey(ignore: true)
  @override
  $SuccessCopyWith<T, Success<T>> get copyWith =>
      _$SuccessCopyWithImpl<T, Success<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult success(T data, int statusCode, String statusMessage),
    @required
        TResult failure(
            NetworkExceptions error, int statusCode, String statusMessage),
  }) {
    assert(success != null);
    assert(failure != null);
    return success(data, statusCode, statusMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult success(T data, int statusCode, String statusMessage),
    TResult failure(
        NetworkExceptions error, int statusCode, String statusMessage),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(data, statusCode, statusMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult success(Success<T> value),
    @required TResult failure(Failure<T> value),
  }) {
    assert(success != null);
    assert(failure != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult success(Success<T> value),
    TResult failure(Failure<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success<T> implements ApiResponse<T> {
  const factory Success(
      {@required T data, int statusCode, String statusMessage}) = _$Success<T>;

  T get data;
  @override
  int get statusCode;
  @override
  String get statusMessage;
  @override
  @JsonKey(ignore: true)
  $SuccessCopyWith<T, Success<T>> get copyWith;
}

/// @nodoc
abstract class $FailureCopyWith<T, $Res>
    implements $ApiResponseCopyWith<T, $Res> {
  factory $FailureCopyWith(Failure<T> value, $Res Function(Failure<T>) then) =
      _$FailureCopyWithImpl<T, $Res>;
  @override
  $Res call({NetworkExceptions error, int statusCode, String statusMessage});

  $NetworkExceptionsCopyWith<$Res> get error;
}

/// @nodoc
class _$FailureCopyWithImpl<T, $Res> extends _$ApiResponseCopyWithImpl<T, $Res>
    implements $FailureCopyWith<T, $Res> {
  _$FailureCopyWithImpl(Failure<T> _value, $Res Function(Failure<T>) _then)
      : super(_value, (v) => _then(v as Failure<T>));

  @override
  Failure<T> get _value => super._value as Failure<T>;

  @override
  $Res call({
    Object error = freezed,
    Object statusCode = freezed,
    Object statusMessage = freezed,
  }) {
    return _then(Failure<T>(
      error: error == freezed ? _value.error : error as NetworkExceptions,
      statusCode: statusCode == freezed ? _value.statusCode : statusCode as int,
      statusMessage: statusMessage == freezed
          ? _value.statusMessage
          : statusMessage as String,
    ));
  }

  @override
  $NetworkExceptionsCopyWith<$Res> get error {
    if (_value.error == null) {
      return null;
    }
    return $NetworkExceptionsCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc
class _$Failure<T> with DiagnosticableTreeMixin implements Failure<T> {
  const _$Failure({@required this.error, this.statusCode, this.statusMessage})
      : assert(error != null);

  @override
  final NetworkExceptions error;
  @override
  final int statusCode;
  @override
  final String statusMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApiResponse<$T>.failure(error: $error, statusCode: $statusCode, statusMessage: $statusMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ApiResponse<$T>.failure'))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('statusCode', statusCode))
      ..add(DiagnosticsProperty('statusMessage', statusMessage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Failure<T> &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.statusCode, statusCode) ||
                const DeepCollectionEquality()
                    .equals(other.statusCode, statusCode)) &&
            (identical(other.statusMessage, statusMessage) ||
                const DeepCollectionEquality()
                    .equals(other.statusMessage, statusMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(statusCode) ^
      const DeepCollectionEquality().hash(statusMessage);

  @JsonKey(ignore: true)
  @override
  $FailureCopyWith<T, Failure<T>> get copyWith =>
      _$FailureCopyWithImpl<T, Failure<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult success(T data, int statusCode, String statusMessage),
    @required
        TResult failure(
            NetworkExceptions error, int statusCode, String statusMessage),
  }) {
    assert(success != null);
    assert(failure != null);
    return failure(error, statusCode, statusMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult success(T data, int statusCode, String statusMessage),
    TResult failure(
        NetworkExceptions error, int statusCode, String statusMessage),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(error, statusCode, statusMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult success(Success<T> value),
    @required TResult failure(Failure<T> value),
  }) {
    assert(success != null);
    assert(failure != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult success(Success<T> value),
    TResult failure(Failure<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure<T> implements ApiResponse<T> {
  const factory Failure(
      {@required NetworkExceptions error,
      int statusCode,
      String statusMessage}) = _$Failure<T>;

  NetworkExceptions get error;
  @override
  int get statusCode;
  @override
  String get statusMessage;
  @override
  @JsonKey(ignore: true)
  $FailureCopyWith<T, Failure<T>> get copyWith;
}
