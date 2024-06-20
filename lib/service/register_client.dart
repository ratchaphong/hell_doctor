import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/register_request.dart';

part 'register_client.g.dart';

@RestApi(baseUrl: 'https://jsonplaceholder.typicode.com/')
abstract class RegisterClient {
  factory RegisterClient(Dio dio, {String baseUrl}) = _RegisterClient;

  @POST('/posts')
  Future<HttpResponse> register(@Body() RegisterRequest request);
}
