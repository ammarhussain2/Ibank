// home_card_model.dart
import 'dart:ui';

class HomeCardModel {
  final String name;
  final String icon;
  final VoidCallback onTap;

  HomeCardModel({required this.name, required this.icon, required this.onTap});
}
