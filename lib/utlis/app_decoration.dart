import 'package:banking_app/utlis/app_dimen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppDecoration {
  static BoxDecoration cardDecoration() {
    return BoxDecoration(
      color: Get.theme.cardColor,
      borderRadius: BorderRadius.circular(AppDimens.dimen20),
    );
  }
}
