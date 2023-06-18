import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sushi_house_ui/common/widgets/red_button.dart';

TextStyle _textSignInStyle = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.w500,
  fontSize: 13.sp,
);

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  AppBar _buildAppBar() {
    return AppBar(
      title: Text(
        "ПРОФИЛЬ",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15.sp,
          color: Colors.black,
        ),
      ),
    );
  }

  CircleAvatar _buildCircleAvatar() {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: 40.r,
      child: Center(
        child: Icon(
          Icons.person,
          color: const Color.fromARGB(255, 221, 221, 221),
          size: 80.r,
        ),
      ),
    );
  }

  RichText _buildSignInText() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
              text: "Для доступа к профилю и бонусам\n",
              style: _textSignInStyle),
          TextSpan(
              text: "необходима авторизация. Нажмите кнопку\n",
              style: _textSignInStyle),
          TextSpan(text: "\"ВОЙТИ\".\n", style: _textSignInStyle),
        ],
      ),
    );
  }

  Widget _buildElevatedutton() {
    return SizedBox(
      width: 110.w,
      height: 25.h,
      child: const RedButton("ВОЙТИ"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildCircleAvatar(),
            SizedBox(
              height: 25.h,
            ),
            _buildSignInText(),
            SizedBox(
              height: 10.h,
            ),
            _buildElevatedutton(),
          ],
        ),
      ),
      floatingActionButton: Container(
        margin: EdgeInsets.only(bottom: 3.h),
        child: Text(
          "Версия: 7.26.1507",
          style: TextStyle(
              color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 10.sp),
        ),
      ),
    );
  }
}
