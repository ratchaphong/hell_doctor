import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:motion_tab_bar_v2/motion-tab-controller.dart';

class MainController extends GetxController {
  MotionTabBarController? motionTabBarController;
  var bottomNavigationBar = <String>[].obs;
  var isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    isLoading(false);
  }

  @override
  void dispose() {
    super.dispose();
    motionTabBarController!.dispose();
  }

  void setPage(int index) async {
    isLoading(true);
    print(index);
    motionTabBarController!.index = index;
  }
}
