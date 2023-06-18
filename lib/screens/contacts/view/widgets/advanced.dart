import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'row_circle_info.dart';

class Additionally extends StatelessWidget {
  const Additionally({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15.w),
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "ДОПОЛНИТЕЛЬНО",
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
            iconData: FontAwesomeIcons.wordpressSimple,
            awesomeSize: 12.sp,
            label: "Информация по оплате банковской картой",
          ),
          SizedBox(
            height: 8.h,
          ),
          RowCircleInfo(
            iconData: FontAwesomeIcons.wordpressSimple,
            awesomeSize: 14.sp,
            label: "Условия доставки заказа",
          ),
          SizedBox(
            height: 8.h,
          ),
          RowCircleInfo(
            iconData: FontAwesomeIcons.wordpressSimple,
            awesomeSize: 15.sp,
            label: "Условия бонусной системы",
          ),
          SizedBox(
            height: 8.h,
          ),
          RowCircleInfo(
            iconData: FontAwesomeIcons.wordpressSimple,
            awesomeSize: 15.sp,
            label: "Политика конфиденциальности",
          ),
          SizedBox(
            height: 8.h,
          ),
          RowCircleInfo(
            iconData: FontAwesomeIcons.wordpressSimple,
            awesomeSize: 15.sp,
            label: "Оферта",
          ),
        ],
      ),
    );
  }
}
