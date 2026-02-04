import 'package:banking_app/utlis/app_dimen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class Searchwidget extends StatelessWidget {
  final String heading;
  final String subheading;
  final String icon;
  final VoidCallback onTap;
  const Searchwidget({
    super.key,
    required this.heading,
    required this.subheading,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: AppDimens.dimen110,
        width: AppDimens.screenWidth,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 238, 236, 236),
              blurRadius: AppDimens.dimen30,
              spreadRadius: AppDimens.dimen10,
              blurStyle: BlurStyle.outer,
            ),
          ],
        ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  heading,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff343434),
                  ),
                ),
                SizedBox(height: AppDimens.dimen5),
                Text(subheading, style: TextStyle(color: Color(0xff979797))),
              ],
            ),
            Align(alignment: Alignment.centerRight, child: Image.asset(icon)),
          ],
        ).paddingAll(AppDimens.dimen10),
      ),
    );
  }
}
