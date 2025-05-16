// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class HomeController extends GetxController {
  var isLoading = false.obs;
  var cardBannerIndex = 0.obs;

  late PersistentTabController tabController;

  @override
  void onInit() {
    super.onInit();
    tabController = PersistentTabController(initialIndex: 0);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void changeTab(int index) {
    tabController.index = index;
  }
}
