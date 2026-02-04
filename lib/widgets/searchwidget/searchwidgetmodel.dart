import 'dart:ui';

class Searchwidgetmodel {
  final String heading;
  final String subheading;
  final String icon;
  final VoidCallback onTap;
  Searchwidgetmodel({
    required this.heading,
    required this.subheading,
    required this.icon,
    required this.onTap,
  });
}
