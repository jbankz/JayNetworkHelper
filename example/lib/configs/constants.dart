import 'package:jaynetwork/interceptor/retry/add_interceptor.dart';
import 'package:jaynetwork/jaynetwork.dart';

JayNetworkClient jayNetworkClient = JayNetworkClient(
    'https://jsonplaceholder.typicode.com/',
    interceptors: addPredefinedInterceptor());
