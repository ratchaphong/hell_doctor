// ignore_for_file: avoid_print, unused_local_variable

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:hell_care/models/products_response.dart';
import 'package:hell_care/service/cart_client.dart';

import '../models/carts_response.dart';
import '../models/login_request.dart';
import '../models/post_request.dart';
import '../service/login_client.dart';
import '../service/post_client.dart';
import '../service/product_client.dart';
import '../views/home_screen.dart';

class LoginController extends GetxController {
  final ProductClient _productClient = ProductClient(Dio());
  final CartClient _cartClient = CartClient(Dio());
  final PostClient _postClient = PostClient(Dio());
  final LoginClient _loginClient = LoginClient(Dio());

  var isLoading = false.obs;
  var user = "".obs;
  var password = "".obs;
  var products = <ProductsResponse>[].obs;

  void checkUser() async {
    print('${password.value} ${user.value}');
    isLoading(true);
    try {
      await _loginClient
          .login(LoginRequest(password: password.value, user: user.value));
      print('login successfully.');

      if (user.value == "admin" && password.value == "admin") {
        Get.offAll(() => const HomeScreen());
      } else {
        throw Exception("Invalid username or password");
      }
    } catch (e) {
      isLoading(false);
      Get.snackbar("Login Failed", e.toString(),
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  Future<List<ProductsResponse>> getProducts() async {
    var response = await _productClient.getProducts();
    print('getProducts -------- start');
    print('${response.data}');
    print('getProducts -------- end');
    print('');
    return response.data;
  }

  Future<ProductsResponse> getProduct(int productId) async {
    var response = await _productClient.getProduct(productId);
    print('getProduct -------- start');
    print('${response.data}');
    print('getProduct -------- end');
    print('');
    return response.data;
  }

  Future<List<CartsResponse>> getCart(int cartId) async {
    var response = await _cartClient.getCarts(cartId);
    print('getCart -------- start');
    print('${response.data}');
    print('getCart -------- end');
    print('');
    return response.data;
  }

  Future createPost(PostRequest request) async {
    print('createPost -------- start');
    print(request.toString());
    print('createPost -------- end');
    print('');
    return await _postClient.createPosts(request);
  }

  Future updatePost(int postId, PostRequest request) async {
    print('updatePost -------- start');
    print(postId);
    print(request.toString());
    print('updatePost -------- end');
    print('');
    return await _postClient.updatePosts(postId, request);
  }

  Future deletePost(int postId) async {
    print('deletePost -------- start');
    print(postId);
    print('deletePost -------- end');
    print('');
    return await _postClient.deletePosts(postId);
  }
}
