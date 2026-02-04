import 'package:banking_app/Screens/exchange/exchange_screen.dart';
import 'package:banking_app/widgets/searchwidget/searchwidgetmodel.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';

class SearchscreenController extends GetxController {
  List<Searchwidgetmodel> searchitem = [];
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    searchitem = [
      Searchwidgetmodel(
        heading: "Branch",
        subheading: "Search for branch",
        icon: "assets/icons/branch.png",
        onTap: () {
          print("branch is tapped");
        },
      ),
      Searchwidgetmodel(
        heading: "Interest Rate",
        subheading: "Search for interest rate",
        icon: "assets/icons/interestrate.png",
        onTap: () {
          print("branch is tapped");
        },
      ),
      Searchwidgetmodel(
        heading: "Exchange rate",
        subheading: "Search for exchange rate",
        icon: "assets/icons/exchangerate.png",
        onTap: () {
          print("branch is tapped");
        },
      ),
      Searchwidgetmodel(
        heading: "Exchange",
        subheading: "exchange amount of money",
        icon: "assets/icons/exchange.png",
        onTap: () {
          toggleexchangeamount();
        },
      ),
    ];
  }

  void toggleexchangeamount() {
    Get.to(() => ExchangeScreen());
  }
}
