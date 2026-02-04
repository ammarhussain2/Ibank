import 'package:banking_app/Screens/setting/appinformation_screen.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';

class SettingController extends GetxController {
  List<String> settingsOptions = [
    'Passwords',
    'Language',
    'App information',
    'Help',
    'About',
  ];

  void settingcall(int index, BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        if (index == 2) {
          return const AppinformationScreen(); // must be a Widget
        } else {
          return AlertDialog(
            title: Text(settingsOptions[index]),
            content: Text('This is the ${settingsOptions[index]} section.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Close'),
              ),
            ],
          );
        }
      },
    );
  }
}
