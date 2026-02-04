import 'package:banking_app/Screens/withdraw/verify_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class WithdrawController extends GetxController {
  int selectedAmount = 0;
  final TextEditingController accountController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  final List<int> amounts = [10, 20, 100, 500, 1000];

  void selectAmount(int amount) {
    selectedAmount = amount;
    update(); // 🔥 refresh UI
  }

  bool isSelected(int amount) {
    return selectedAmount == amount;
  }

  bool get isVerifyEnabled => selectedAmount != 0;

  void moveVerify() {
    if (selectedAmount != 0) {
      Get.to(VerifyScreen());
    }
  }
}
