import 'package:example/configs/constants.dart';
import 'package:example/model/dummy_model.dart';
import 'package:jaynetwork/jaynetwork.dart';

Future<ApiResponse<DummyData>> makeNetworkRequestRepository() async {
  try {
    final _response = await jayNetworkClient.makeGetRequest('posts/1');
    return ApiResponse.success(
        statusMessage: _response.statusMessage,
        data: DummyData.fromJson(_response.data),
        statusCode: _response.statusCode);
  } catch (e) {
    return ApiResponse.failure(
      error: NetworkExceptions.getJayNetworkException(e),
      statusCode: e.statusCode,
      statusMessage: e.statusMessage,
    );
  }
}
