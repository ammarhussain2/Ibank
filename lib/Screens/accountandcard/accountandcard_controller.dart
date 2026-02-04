import 'package:get/get.dart';

class AccountandcardController extends GetxController {
  List<Map<String, dynamic>> accounts = [
    {
      "title": "Account 1",
      "number": "1753 9512 9563",
      "balance": "\$20,000",
      "branch": "New York",
    },
    {
      "title": "Account 2",
      "number": "9823 4156 7456",
      "balance": "\$5,800",
      "branch": "Los Angeles",
    },
    {
      "title": "Account 3",
      "number": "6523 7451 9632",
      "balance": "\$12,400",
      "branch": "Chicago",
    },
  ];
  bool item = true;

  changeitem() {
    item = !item;
    update();
  }
}
