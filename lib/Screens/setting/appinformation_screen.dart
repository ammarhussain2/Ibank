import 'package:banking_app/utlis/app_dimen.dart';
import 'package:flutter/material.dart';
import 'package:banking_app/utlis/app_dimen.dart';

class AppinformationScreen extends StatelessWidget {
  const AppinformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: AppDimens.screenHeight,
        width: AppDimens.screenWidth,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  BackButton(),
                  Text(
                    "App Information",
                    style: TextStyle(
                      fontSize: AppDimens.dimen24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: AppDimens.dimen16),
              Text(
                "Version: 1.0.0",
                style: TextStyle(fontSize: AppDimens.dimen16),
              ),
              SizedBox(height: AppDimens.dimen8),
              Text(
                "Developed by: Banking App Team",
                style: TextStyle(fontSize: AppDimens.dimen16),
              ),
              SizedBox(height: AppDimens.dimen8),
              Text(
                "This app provides banking services including account management, fund transfers, and more.",
                style: TextStyle(fontSize: AppDimens.dimen16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
