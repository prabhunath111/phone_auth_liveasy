import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:phone_auth_firebase/widgets/error_card.dart';

class ShowDialog {
  static void showLoading(Widget widget) {
    Get.dialog(widget, barrierDismissible: false);
  }

  static void showErrorDialog() {
    Get.dialog(
      ErrorCard(),
    );
  }
}
