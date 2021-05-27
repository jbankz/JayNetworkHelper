import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';

class DioConnectivityRequestRetrier {
  final Dio dio;
  final Connectivity connectivity;

  DioConnectivityRequestRetrier({
    required this.dio,
    required this.connectivity,
  });

  Future<Response> scheduleRequestRetry(DioError err) async {
    late StreamSubscription streamSubscription;
    final responseCompleter = Completer<Response>();

    streamSubscription = connectivity.onConnectivityChanged.listen(
      (connectivityResult) async {
        if (connectivityResult != ConnectivityResult.none) {
          streamSubscription.cancel();
          // Complete the completer instead of returning
          responseCompleter.complete(
            dio.request(
              err.requestOptions.path,
              cancelToken: err.requestOptions.cancelToken,
              data: err.requestOptions.data,
              onReceiveProgress: err.requestOptions.onReceiveProgress,
              onSendProgress: err.requestOptions.onSendProgress,
              queryParameters: err.requestOptions.queryParameters,
              options: Options(
                  method: err.requestOptions.method,
                  sendTimeout: err.requestOptions.sendTimeout,
                  receiveTimeout: err.requestOptions.receiveTimeout,
                  headers: err.requestOptions.headers,
                  responseType: err.requestOptions.responseType,
                  contentType: err.requestOptions.contentType),
            ),
          );
        }
      },
    );

    return responseCompleter.future;
  }
}
