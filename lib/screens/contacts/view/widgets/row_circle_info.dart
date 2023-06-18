import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sushi_house_ui/screens/contacts/view/widgets/circle_icon.dart';

TextStyle _textContactsStyle = const TextStyle(
    color: Color.fromARGB(255, 37, 118, 184), fontWeight: FontWeight.w500);

class RowCircleInfo extends StatelessWidget {
  final IconData iconData;
  final double awesomeSize;
  final String label;

  const RowCircleInfo(
      {required this.iconData,
      required this.awesomeSize,
      required this.label,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleIcon(
          faIcon: FaIcon(
            iconData,
            size: awesomeSize,
            color: Colors.white,
          ),
          color: const Color.fromARGB(255, 202, 202, 202),
          radius: 12.r,
        ),
        SizedBox(
          width: 10.w,
        ),
        Text(
          label,
          style: _textContactsStyle,
        ),
      ],
    );
  }
}
