import 'dart:math';

import 'package:example/configs/constants.dart';
import 'package:example/model/dummy_model.dart';
import 'package:jaynetwork/jaynetwork.dart';

Random _rnd = Random();

// Make your repository method return //* dynamic
Future<ApiResponse<dynamic>> makeNetworkRequestRepository() async {
  try {
    final _response =
        await jayNetworkClient.makeGetRequest('users/${_rnd.nextInt(10)}');
    return ApiResponse.success(
        statusMessage: _response.statusMessage,
        data: DummyData.fromJson(_response.data),
        statusCode: _response.statusCode);
  } catch (e) {
    return handleNetworkException(e);
  }
}

// *@Handle failed response
// ** Use this method to handle failed responses returned from the rest api itself**/
ApiResponse<dynamic> handleNetworkException(e) {
  try {
    // Here, // ** DummyData.fromJson(_) **/
    // is used to parse the failed response body returned
    // returned from the API (Server)
    final _response = DummyData.fromJson(e.response.data);
    return ApiResponse.failure(
        error: NetworkExceptions.getJayNetworkException(e),
        statusMessage: _response.body,
        statusCode: e.statusCode);
  } catch (_) {
    // catch the failed response if after trying the
    // failed server response
    // ** @Alternatively
    // this returns the failed responses from the network failure it self
    return ApiResponse.failure(
        error: NetworkExceptions.getJayNetworkException(e),
        statusMessage: NetworkExceptions.getErrorMessage(
            NetworkExceptions.getJayNetworkException(e)));
  }
}
