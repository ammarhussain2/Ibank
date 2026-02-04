import 'dart:developer';
import 'package:banking_app/Screens/exchange/currencylist_model.dart';
import 'package:banking_app/Screens/exchange/currencyconversion_model.dart';
import 'package:banking_app/api_helpers/api_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExhangeController extends GetxController
    with GetTickerProviderStateMixin {
  final fromController = TextEditingController();
  final toController = TextEditingController();

  List<CurrencyModel> allcurrencies = [];
  String fromCurrency = 'USD';
  String toCurrency = 'PKR';
  bool isloading = false;
  double initalconversionrate = 0.0;

  late AnimationController rotationController;

  @override
  void onInit() {
    super.onInit();
    rotationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );
    fetchCurrencyList();
    fetchConversionRate();
  }

  @override
  void onClose() {
    rotationController.dispose();
    super.onClose();
  }

  void fetchCurrencyList() async {
    try {
      isloading = true;
      update();

      final result = await ApiManager.callGet(
        endPoint: '6ea43c8c9c9eafd1f1497e72/codes',
      );

      final model = CurrencyResponse.fromJson(result);
      allcurrencies = model.currencies;
    } catch (e) {
      log("Currency fetch error: $e");
      Get.snackbar("Error", e.toString());
    } finally {
      isloading = false;
      update();
    }
  }

  void setFromCurrency(String code) {
    fromCurrency = code;
    fetchConversionRate();
    convertAmount();
    update();
  }

  void setToCurrency(String code) {
    toCurrency = code;
    fetchConversionRate();
    convertAmount();
    update();
  }

  void setAmount(String value) {
    fromController.text = value;
    convertAmount();
    update();
  }

  void swapCurrencies() {
    rotationController.forward(from: 0);
    final temp = fromCurrency;
    fromCurrency = toCurrency;
    toCurrency = temp;
    fetchConversionRate();
    convertAmount();
    update();
  }

  void fetchConversionRate() async {
    try {
      final result = await ApiManager.callGet(
        endPoint: '6ea43c8c9c9eafd1f1497e72/pair/$fromCurrency/$toCurrency',
      );
      final model = CurrencyConversionResponse.fromJson(result);
      initalconversionrate = model.conversionRate;
    } catch (e) {
      log("Rate fetch error: $e");
    } finally {
      update();
    }
  }

  void convertAmount() async {
    if (fromController.text.isEmpty) return;
    try {
      isloading = true;
      update();

      final result = await ApiManager.callGet(
        endPoint:
            '6ea43c8c9c9eafd1f1497e72/pair/$fromCurrency/$toCurrency/${fromController.text}',
      );

      final model = CurrencyConversionResponse.fromJson(result);
      toController.text = model.conversionResult.toStringAsFixed(2);
      initalconversionrate = model.conversionRate;
    } catch (e) {
      log("Conversion error: $e");
    } finally {
      isloading = false;
      update();
    }
  }
}
