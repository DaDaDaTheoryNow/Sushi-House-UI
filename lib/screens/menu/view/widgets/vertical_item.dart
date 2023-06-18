import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerticalItem extends StatelessWidget {
  final String label;
  final String filePath;
  const VerticalItem(this.label, this.filePath, {super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 85.h,
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(5.w, 6.h, 5.w, 0),
          color: Colors.transparent,
          child: Ink(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              image: DecorationImage(
                image: AssetImage(
                  filePath,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: InkWell(
              onTap: () {
                debugPrint("Sushi House");
              },
              borderRadius: BorderRadius.circular(13),
            ),
          ),
        ),
        Positioned(
          left: 10.w,
          bottom: 6.h,
          child: Container(
            margin: EdgeInsets.only(left: 3.w),
            padding: EdgeInsets.all(5.h),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              label,
              style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ],
    );
  }
}
