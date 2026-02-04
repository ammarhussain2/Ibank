// home_controller.dart
import 'package:banking_app/Screens/accountandcard/accountandcard_screen.dart';
import 'package:banking_app/Screens/withdraw/withdraw_screen.dart';
import 'package:banking_app/widgets/homecard/homecardmodel.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  List<HomeCardModel> cardItems = [];

  @override
  void onInit() {
    super.onInit();
    cardItems = [
      HomeCardModel(
        name: 'Account and Card',
        icon: 'assets/icons/accountandcard.png',
        onTap: () => Get.to(AccountandcardScreen()),
      ),
      HomeCardModel(
        name: 'Transfer',
        icon: 'assets/icons/transfer.png',
        onTap: () => print("Receive tapped"),
      ),
      HomeCardModel(
        name: 'Withdraw',
        icon: 'assets/icons/withdraw.png',
        onTap: () => Get.to(WithdrawScreen()),
      ),
      HomeCardModel(
        name: 'Mobile prepaid',
        icon: 'assets/icons/mobileprepaid.png',
        onTap: () => print("Send tapped"),
      ),
      HomeCardModel(
        name: 'Pay the bill',
        icon: 'assets/icons/paythebill.png',
        onTap: () => print("Receive tapped"),
      ),
      HomeCardModel(
        name: 'Save online',
        icon: 'assets/icons/saveonline.png',
        onTap: () => print("Pay Bills tapped"),
      ),
      HomeCardModel(
        name: 'Credit Card',
        icon: 'assets/icons/creditcard.png',
        onTap: () => print("Send tapped"),
      ),
      HomeCardModel(
        name: 'Transaction report',
        icon: 'assets/icons/transactionreport.png',
        onTap: () => print("Receive tapped"),
      ),
      HomeCardModel(
        name: 'Beneficiary',
        icon: 'assets/icons/beneficiary.png',
        onTap: () => print("Pay Bills tapped"),
      ),
      // Add more items as needed
    ];
  }
}
