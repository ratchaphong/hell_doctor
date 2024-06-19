import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/products_response.dart';

part 'product_client.g.dart';

@RestApi(baseUrl: "https://fakestoreapi.com/")
abstract class ProductClient {
  factory ProductClient(Dio dio, {String baseUrl}) = _ProductClient;

  @GET("/products")
  Future<HttpResponse<List<ProductsResponse>>> getProducts();

  @GET("/products/{id}")
  Future<HttpResponse<ProductsResponse>> getProduct(@Path("id") int id);
}
