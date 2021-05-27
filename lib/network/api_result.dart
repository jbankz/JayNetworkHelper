import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'network_exceptions.dart';

part 'api_result.freezed.dart';

@freezed
abstract class ApiResponse<T> with _$ApiResponse<T> {
  const factory ApiResponse.success(
      {required T data, int? statusCode, String? statusMessage}) = Success<T>;

  const factory ApiResponse.failure(
      {required NetworkExceptions error,
      int? statusCode,
      String? statusMessage}) = Failure<T>;
}
