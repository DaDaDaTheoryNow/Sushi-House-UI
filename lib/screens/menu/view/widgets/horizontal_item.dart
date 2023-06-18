import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HorizontalItem extends StatelessWidget {
  final int index;
  const HorizontalItem(this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      width: 70.w,
      child: Container(
        margin: EdgeInsets.fromLTRB(5.w, 9.h, 5.w, 3.h),
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13),
            image: DecorationImage(
              image: AssetImage(
                "assets/images/menu-horizontal-$index.png",
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
    );
  }
}
