import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sushi_house_ui/screens/contacts/view/widgets/row_circle_info.dart';

class Contacts extends StatelessWidget {
  const Contacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15.w),
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "КОНТАКТЫ",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          RowCircleInfo(
            iconData: FontAwesomeIcons.phone,
            awesomeSize: 12.sp,
            label: "7440",
          ),
          SizedBox(
            height: 8.h,
          ),
          RowCircleInfo(
            iconData: FontAwesomeIcons.envelopesBulk,
            awesomeSize: 14.sp,
            label: "marketing@sushihouse.by",
          ),
          SizedBox(
            height: 8.h,
          ),
          RowCircleInfo(
            iconData: FontAwesomeIcons.wordpressSimple,
            awesomeSize: 15.sp,
            label: "sushihouse.by",
          ),
        ],
      ),
    );
  }
}
