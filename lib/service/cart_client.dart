import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/carts_response.dart';

part 'cart_client.g.dart';

@RestApi(baseUrl: "https://fakestoreapi.com/")
abstract class CartClient {
  factory CartClient(Dio dio, {String baseUrl}) = _CartClient;

  @GET("/carts")
  Future<HttpResponse<List<CartsResponse>>> getCarts(
      @Query("userId") int userId);
}
