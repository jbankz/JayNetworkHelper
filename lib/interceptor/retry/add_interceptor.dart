import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'dio_connectivity_request_retrial.dart';
import 'retry_interceptor.dart';

List<Interceptor> addPredefinedInterceptor() {
  List<Interceptor> _interceptors = [];

  //* adds a debug message interceptor
  if (kDebugMode) {
    _interceptors.add(LogInterceptor(
        responseBody: true,
        error: true,
        requestHeader: true,
        responseHeader: true,
        request: true,
        requestBody: true));
  }

  //* adds a network request retry interceptor
  _interceptors.add(RetryOnConnectionChangeInterceptor(
      requestRetrier: DioConnectivityRequestRetrier(
          dio: Dio(), connectivity: Connectivity())));
  return _interceptors;
}
