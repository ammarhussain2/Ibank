// widgets/currency_input_field.dart
import 'dart:developer';

import 'package:banking_app/utlis/app_dimen.dart';
import 'package:flutter/material.dart';

class CurrencyInputField extends StatelessWidget {
  final TextEditingController controller;
  final String selectedCurrency;
  final Function(String?) onCurrencyChanged;
  final String hint;
  Function()? onPressed;
  Function(String)? onChanged;

  CurrencyInputField({
    super.key,
    required this.controller,
    required this.selectedCurrency,
    required this.onCurrencyChanged,
    required this.hint,
    required this.onPressed,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: hint,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 18,
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(color: Colors.blue, width: 1.5),
        ),
        suffixIcon: SizedBox(
          width: AppDimens.dimen100,

          child: TextButton(
            onPressed: onPressed,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  selectedCurrency,

                  overflow: TextOverflow.clip,
                  style: TextStyle(fontSize: 18, color: Color(0xff343434)),
                ),
                SizedBox(width: AppDimens.dimen8),
                Image.asset("assets/icons/updownarrow.png"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
