import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/post_request.dart';

part 'post_client.g.dart';

@RestApi(baseUrl: "https://jsonplaceholder.typicode.com/")
abstract class PostClient {
  factory PostClient(Dio dio, {String baseUrl}) = _PostClient;

  @POST("/posts")
  Future<HttpResponse> createPosts(@Body() PostRequest request);

  @PUT("/posts/{id}")
  Future<HttpResponse> updatePosts(
      @Path("id") int id, @Body() PostRequest request);

  @DELETE("/posts/{id}")
  Future<HttpResponse> deletePosts(@Path("id") int id);
}
