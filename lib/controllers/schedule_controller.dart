// ignore_for_file: avoid_print, unused_local_variable

import 'package:get/get.dart';
import 'package:hell_care/models/schedule_response.dart';

import '../gen/assets.gen.dart';

class ScheduleController extends GetxController {
  Rx<int> currentIndex = 0.obs;
  Rx<bool> isLoading = false.obs;
  Rx<ScheduleResponse?> schedule = Rx<ScheduleResponse?>(null);

  @override
  void onInit() {
    super.onInit();
    print('โหลดข้อมูลตารางนัด');
    getScheduleCompleted();
    currentIndex.value = 1;
  }

  void handleTabChange(int index) {
    print('Handling tab change for index: $index');
    switch (index) {
      case 1:
        {
          getScheduleCompleted();
        }
        break;
      case 2:
        {
          getScheduleCancel();
        }
        break;
      default:
        {
          getSchedule();
        }
        break;
    }
    currentIndex.value = index;
  }

  void getSchedule() async {
    isLoading(true);
    try {
      ScheduleResponse response = ScheduleResponse(
        statusCode: 200,
        code: "SUCCESS",
        data: [
          ScheduleData(
            confirmation: 'Confirmed',
            mainText: 'Dr. Marcus Horizon',
            subText: 'Chardiologist',
            date: '26/06/2022',
            time: '10:30 AM',
            image: Assets.icons.maleDoctor.path,
          ),
          ScheduleData(
            confirmation: 'Confirmed',
            mainText: 'Dr. Marcus Horizon',
            subText: 'Chardiologist',
            date: '26/06/2022',
            time: '2:30 AM',
            image: Assets.icons.femaleDoctor2.path,
          ),
          ScheduleData(
            confirmation: 'Confirmed',
            mainText: 'Dr. Marcus Horizon',
            subText: 'Chardiologist',
            date: '26/06/2022',
            time: '10:30 AM',
            image: Assets.icons.maleDoctor.path,
          ),
          ScheduleData(
            confirmation: 'Confirmed',
            mainText: 'Dr. Marcus Horizon',
            subText: 'Chardiologist',
            date: '26/06/2022',
            time: '2:30 AM',
            image: Assets.icons.femaleDoctor2.path,
          ),
        ],
      );
      print(response);
      if (response.statusCode == 200) {
        schedule(response);
      }
      isLoading(false);
    } catch (e) {
      isLoading(false);
      Get.snackbar('Schedule Failed', e.toString(),
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  void getScheduleCompleted() async {
    isLoading(true);
    try {
      // var response = await _ScheduleClient.getSchedule();
      ScheduleResponse response = ScheduleResponse(
        statusCode: 200,
        code: "SUCCESS",
        data: [],
      );
      print(response);
      if (response.statusCode == 200) {
        schedule(response);
      }
      isLoading(false);
    } catch (e) {
      isLoading(false);
      Get.snackbar('Schedule Failed', e.toString(),
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  void getScheduleCancel() async {
    isLoading(true);
    try {
      // var response = await _ScheduleClient.getSchedule();
      ScheduleResponse response = ScheduleResponse(
        statusCode: 200,
        code: "SUCCESS",
        data: [
          ScheduleData(
            confirmation: 'Cancelled',
            mainText: 'Dr. Marcus Horizon',
            subText: 'Chardiologist',
            date: '29/06/2022',
            time: '1:30 AM',
            image: Assets.icons.femaleDoctor2.path,
          ),
        ],
      );
      print(response);
      if (response.statusCode == 200) {
        schedule(response);
      }
      isLoading(false);
    } catch (e) {
      isLoading(false);
      Get.snackbar('Schedule Failed', e.toString(),
          snackPosition: SnackPosition.BOTTOM);
    }
  }
}
