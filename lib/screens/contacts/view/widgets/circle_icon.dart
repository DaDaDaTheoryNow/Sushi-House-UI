import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CircleIcon extends StatelessWidget {
  final FaIcon faIcon;
  final Color color;
  final double radius;
  const CircleIcon(
      {required this.faIcon,
      required this.color,
      required this.radius,
      super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: color,
      radius: radius,
      child: faIcon,
    );
  }
}
