import 'package:flutter/material.dart';

class AppDimens {
  static double? _screenHeight;
  static double? _screenWidth;
  static bool _initialized = false;

  /// Must be called once in build method before accessing dimensions
  static void init(BuildContext context) {
    if (!_initialized) {
      final size = MediaQuery.of(context).size;
      _screenHeight = size.height;
      _screenWidth = size.width;
      _initialized = true;
    }
  }

  static double get screenHeight {
    if (_screenHeight == null) {
      throw Exception(
        'AppDimens not initialized. Call AppDimens.init(context) first.',
      );
    }
    return _screenHeight!;
  }

  static double get screenWidth {
    if (_screenWidth == null) {
      throw Exception(
        'AppDimens not initialized. Call AppDimens.init(context) first.',
      );
    }
    return _screenWidth!;
  }

  // Heights
  static double get dimen2 => screenHeight * 0.002;
  static double get dimen3 => screenHeight * 0.003;
  static double get dimen4 => screenHeight * 0.004;
  static double get dimen5 => screenHeight * 0.005;
  static double get dimen6 => screenHeight * 0.006;
  static double get dimen8 => screenHeight * 0.008;
  static double get dimen10 => screenHeight * 0.010;
  static double get dimen12 => screenHeight * 0.012;
  static double get dimen14 => screenHeight * 0.014;
  static double get dimen15 => screenHeight * 0.015;
  static double get dimen16 => screenHeight * 0.016;
  static double get dimen18 => screenHeight * 0.018;
  static double get dimen20 => screenHeight * 0.020;
  static double get dimen22 => screenHeight * 0.022;
  static double get dimen24 => screenHeight * 0.024;
  static double get dimen26 => screenHeight * 0.026;
  static double get dimen30 => screenHeight * 0.030;
  static double get dimen32 => screenHeight * 0.032;
  static double get dimen35 => screenHeight * 0.035;
  static double get dimen40 => screenHeight * 0.040;
  static double get dimen45 => screenHeight * 0.045;
  static double get dimen50 => screenHeight * 0.050;
  static double get dimen55 => screenHeight * 0.055;
  static double get dimen60 => screenHeight * 0.060;
  static double get dimen65 => screenHeight * 0.065;
  static double get dimen70 => screenHeight * 0.070;
  static double get dimen75 => screenHeight * 0.075;
  static double get dimen80 => screenHeight * 0.080;
  static double get dimen90 => screenHeight * 0.090;
  static double get dimen100 => screenHeight * 0.100;
  static double get dimen110 => screenHeight * 0.110;
  static double get dimen120 => screenHeight * 0.120;
  static double get dimen130 => screenHeight * 0.130;
  static double get dimen140 => screenHeight * 0.140;
  static double get dimen150 => screenHeight * 0.150;
  static double get dimen160 => screenHeight * 0.160;
  static double get dimen180 => screenHeight * 0.180;
  static double get dimen190 => screenHeight * 0.190;
  static double get dimen200 => screenHeight * 0.200;
  static double get dimen210 => screenHeight * 0.210;
  static double get dimen220 => screenHeight * 0.220;
  static double get dimen230 => screenHeight * 0.230;
  static double get dimen250 => screenHeight * 0.250;
  static double get dimen260 => screenHeight * 0.260;
  static double get dimen270 => screenHeight * 0.270;
  static double get dimen280 => screenHeight * 0.280;
  static double get dimen300 => screenHeight * 0.300;
  static double get dimen310 => screenHeight * 0.310;
  static double get dimen330 => screenHeight * 0.330;

  static double get dimen350 => screenHeight * 0.350;
  static double get dimen400 => screenHeight * 0.400;

  // Widths
  static double get dimenW08 => screenWidth * 0.008;
  static double get dimenW10 => screenWidth * 0.010;
  static double get dimenW20 => screenWidth * 0.020;
  static double get dimenW24 => screenWidth * 0.024;
  static double get dimenW30 => screenWidth * 0.030;
  static double get dimenW34 => screenWidth * 0.034;
  static double get dimenW36 => screenWidth * 0.036;
  static double get dimenW40 => screenWidth * 0.040;
  static double get dimenW50 => screenWidth * 0.050;
  static double get dimenW60 => screenWidth * 0.060;
  static double get dimenW70 => screenWidth * 0.070;
  static double get dimenW80 => screenWidth * 0.080;
  static double get dimenW90 => screenWidth * 0.090;
  static double get dimenW100 => screenWidth * 0.100;
  static double get dimenW120 => screenWidth * 0.120;
  static double get dimenW160 => screenWidth * 0.160;
  static double get dimenW200 => screenWidth * 0.200;
}

class FontDimen {
  static double get textScaleFactor => 1;
  static double get dimen2 => textScaleFactor * 2;
  static double get dimen4 => textScaleFactor * 4;
  static double get dimen6 => textScaleFactor * 6;
  static double get dimen8 => textScaleFactor * 8;
  static double get dimen10 => textScaleFactor * 10;
  static double get dimen11 => textScaleFactor * 11;
  static double get dimen12 => textScaleFactor * 12;
  static double get dimen13 => textScaleFactor * 13;
  static double get dimen14 => textScaleFactor * 14;
  static double get dimen16 => textScaleFactor * 16;
  static double get dimen18 => textScaleFactor * 18;
  static double get dimen20 => textScaleFactor * 20;
  static double get dimen22 => textScaleFactor * 22;
  static double get dimen24 => textScaleFactor * 24;
  static double get dimen25 => textScaleFactor * 25;
  static double get dimen28 => textScaleFactor * 28;
  static double get dimen30 => textScaleFactor * 30;
  static double get dimen32 => textScaleFactor * 32;
  static double get dimen34 => textScaleFactor * 34;
  static double get dimen38 => textScaleFactor * 38;
  static double get dimen40 => textScaleFactor * 40;
  static double get dimen75 => textScaleFactor * 75;
}
