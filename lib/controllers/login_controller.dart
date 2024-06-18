// ignore_for_file: avoid_print

import 'package:get/get.dart';
import 'package:injectable/injectable.dart';

import '../service/login/login_api_repo.dart';

late LoginApiRepo _repository;

@injectable
class LoginController extends GetxController {
  var isLoading = false.obs;
  var user = "".obs;
  var password = "".obs;

  void checkUser() async {
    String userMap = user.value;
    String passwordMap = password.value;
    print("checkUser");
    print(userMap);
    print(passwordMap);
    isLoading(true);
    try {
      _repository.login();
      if (userMap == "admin" && passwordMap == "admin") {
        // await saveDataIntoSharedPref(userMap, passwordMap);
        // Get.offAll(() => HomeScreen());
      } else {
        throw Exception("Invalid username or password");
      }
    } catch (e) {
      isLoading(false);
      Get.snackbar("Login Failed", e.toString(),
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  Future<void> saveDataIntoSharedPref(String user, String password) async {
    // var prefs = await SharedPreferences.getInstance();
    // await prefs.setString('user', user);
    // await prefs.setString('password', password);
  }
}
