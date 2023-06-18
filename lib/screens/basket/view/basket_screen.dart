import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BasketScreen extends StatelessWidget {
  const BasketScreen({super.key});

  AppBar _buildAppBar() {
    return AppBar(
      title: Text(
        "КОРЗИНА",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15.sp,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget _buildCenterText() {
    return Center(
      child: Text(
        "Корзина пуста",
        style: TextStyle(
          color: Colors.grey,
          fontSize: 13.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildCenterText(),
    );
  }
}
