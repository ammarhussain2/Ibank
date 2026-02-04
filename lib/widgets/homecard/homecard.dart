import 'package:banking_app/utlis/app_colors.dart';
import 'package:banking_app/utlis/app_dimen.dart';

import 'package:flutter/material.dart';

class Homecard extends StatelessWidget {
  final String icon;
  final String name;
  final VoidCallback? onTap;
  const Homecard({
    super.key,
    required this.icon,
    required this.name,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Material(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(20),
        elevation: 0,
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          splashColor: Colors.blue.withOpacity(0.1), // subtle ripple for iOS
          highlightColor: Colors.blue.withOpacity(0.05),
          onTap: onTap ?? () {},

          child: Container(
            height: AppDimens.dimen120,
            width: AppDimens.dimen120,
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 0.3,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            padding: EdgeInsets.symmetric(horizontal: AppDimens.dimen16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(icon),
                SizedBox(height: AppDimens.dimen10),
                Text(
                  name,
                  style: const TextStyle(
                    color: Color(0xff979797),
                    fontSize: 16,
                    height: 1.2,
                  ),
                  overflow: TextOverflow.fade,
                  textAlign: TextAlign.center,
                  // ignore: deprecated_member_use
                  textScaleFactor: 0.8,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
