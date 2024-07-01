// ignore_for_file: avoid_print, unused_local_variable

// import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:hell_care/models/profile_response.dart';

// import '../service/profile_client.dart';

class ProfileController extends GetxController {
  // final ProfileClient _profileClient = ProfileClient(Dio());

  Rx<bool> isLoading = false.obs;
  Rx<ProfileResponse?> userProfile = Rx<ProfileResponse?>(null);

  @override
  void onInit() {
    super.onInit();
    print('โหลดข้อมูลโปรไฟล์เมื่อเข้าหน้าโปรไฟล์');
    getMyProfile();
  }

  void getMyProfile() async {
    isLoading(true);
    try {
      // var response = await _profileClient.profile();
      ProfileResponse response = ProfileResponse(
        statusCode: 200,
        code: "SUCCESS",
        data: Data(
          username: "Amelia Renata",
          avatar: "",
          coverPhoto: "",
          stats: Stats(
            calories: 756,
            weight: 103,
            heartRate: 215,
          ),
        ),
      );
      print(response);
      if (response.statusCode == 200) {
        userProfile(response);
      }
      isLoading(false);
    } catch (e) {
      isLoading(false);
      Get.snackbar('Profile Failed', e.toString(),
          snackPosition: SnackPosition.BOTTOM);
    }
  }
}
