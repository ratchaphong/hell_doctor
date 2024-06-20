// ignore_for_file: avoid_print, unused_local_variable

import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
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
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  var isLoading = false.obs;
  var user = 'admin'.obs;
  var password = 'admin'.obs;
  var products = <ProductsResponse>[].obs;

  @override
  void onInit() {
    super.onInit();
    userController.text = user.value;
    passwordController.text = password.value;
    print('onInit...');
    print('');
  }

  @override
  void dispose() {
    super.dispose();
    userController.dispose();
    passwordController.dispose();
    print('dispose...');
    print('');
  }

  void checkUser() async {
    print('${password.value} ${user.value}');
    isLoading(true);
    try {
      await _loginClient
          .login(LoginRequest(password: password.value, user: user.value));
      print('Login successful.');

      if (user.value == 'admin' && password.value == 'admin') {
        Get.offAll(() => const HomeScreen());
      } else {
        throw Exception('Invalid username or password');
      }
    } catch (e) {
      isLoading(false);
      Get.snackbar('Login Failed', e.toString(),
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  Future<List<ProductsResponse>> getProducts() async {
    var response = await _productClient.getProducts();
    print('${response.data}');
    print('');
    return response.data;
  }

  Future<ProductsResponse> getProduct(int productId) async {
    var response = await _productClient.getProduct(productId);
    print('${response.data}');
    print('');
    return response.data;
  }

  Future<List<CartsResponse>> getCart(int cartId) async {
    var response = await _cartClient.getCarts(cartId);
    print('${response.data}');
    print('');
    return response.data;
  }

  Future createPost(PostRequest request) async {
    print(request.toString());
    print('');
    return await _postClient.createPosts(request);
  }

  Future updatePost(int postId, PostRequest request) async {
    print(postId);
    print(request.toString());
    print('');
    return await _postClient.updatePosts(postId, request);
  }

  Future deletePost(int postId) async {
    print(postId);
    print('');
    return await _postClient.deletePosts(postId);
  }
}
