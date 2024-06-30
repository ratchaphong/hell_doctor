import 'package:dio/dio.dart';
import 'package:hell_care/models/profile_response.dart';
import 'package:retrofit/retrofit.dart';

part 'profile_client.g.dart';

@RestApi(baseUrl: "https://fakestoreapi.com/")
abstract class ProfileClient {
  factory ProfileClient(Dio dio, {String baseUrl}) = _ProfileClient;

  @GET("/products")
  Future<HttpResponse<ProfileResponse>> profile();
}
