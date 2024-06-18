import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../models/login_response.dart';
import '../dio_client.dart';

part 'login_api_repo.g.dart';

@RestApi()
@injectable
abstract class LoginApiRepo {
  @factoryMethod
  factory LoginApiRepo(DioClient _dioClient) =>
      _LoginApiRepo(_dioClient.client);

  @GET('/products/1')
  Future<LoginResponse> login();
}
