// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';

class OnboardingController extends GetxController {
  var currIndex = 0.obs;

  List<Map<String, String>> contents = [
    {
      'image': 'onboarding-0',
      'headline': 'Terhubung. Berkembang. Bersama',
      'body':
          'Mewakili semangat kolaborasi dan pertumbuhan komunitas profesional di Indonesia.',
    },
    {
      'image': 'onboarding-1',
      'headline': 'Ruangmu. Gayamu. Bisnismu.',
      'body':
          'Menekankan fleksibilitas dan\npersonalisasi yang ditawarkan oleh UnionSpace.',
    },
    {
      'image': 'onboarding-2',
      'headline': 'Mulai Hari Produktifmu Sekarang!',
      'body':
          'Pendek, positif, dan langsung mengajak pengguna untuk mulai beraktivitas. Daftar dan Jelajahi Space Sekarang!',
    },
  ];

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void nextPage() {
    if (currIndex < 2) {
      currIndex.value++;
    }
  }
}
