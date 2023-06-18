import 'dart:async';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sushi_house_ui/screens/menu/view/widgets/horizontal_item.dart';
import 'package:sushi_house_ui/screens/menu/view/widgets/vertical_item.dart';

const String _menuVerticalPath = "assets/images/menu-vertical-";

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  late final Timer? _horizontalPageTimer;
  int _horizontalFocusedIndex = 0;
  final PageController _horizontalPageController = PageController(
    viewportFraction: 0.85,
  );

  @override
  void initState() {
    super.initState();
    horizontalPageTimer();
  }

  void horizontalPageTimer() {
    _horizontalPageTimer =
        Timer.periodic(const Duration(seconds: 5), (time) async {
      final nextPage = (_horizontalPageController.page?.toInt() ?? 0) + 1;
      await _horizontalPageController.animateToPage(
        (_horizontalFocusedIndex != 5) ? nextPage : 0,
        duration: (_horizontalFocusedIndex != 5)
            ? const Duration(seconds: 1)
            : const Duration(milliseconds: 450),
        curve: Curves.easeOut,
      );
    });
  }

  void _onItemFocus(int index) {
    setState(() {
      _horizontalFocusedIndex = index;
    });
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 90.h,
            width: 90.w,
            child: Image.asset("assets/images/sushi_house_logo.jpg"),
          ),
          Text(
            "24/7",
            style: TextStyle(color: Colors.black, fontSize: 20.sp),
          )
        ],
      ),
      toolbarHeight: 40.h,
    );
  }

  DotsIndicator _buildDotsIndicator() {
    return DotsIndicator(
      dotsCount: 6,
      position: _horizontalFocusedIndex,
      decorator: const DotsDecorator(
        color: Colors.grey,
        activeColor: Colors.red,
      ),
    );
  }

  Widget _buildHorizontalItems() {
    return Column(
      children: [
        SizedBox(
          height: 120.h,
          child: PageView.builder(
            physics: const BouncingScrollPhysics(),
            controller: _horizontalPageController,
            onPageChanged: _onItemFocus,
            itemCount: 6,
            itemBuilder: ((context, index) {
              return HorizontalItem(index);
            }),
          ),
        ),
        _buildDotsIndicator(),
      ],
    );
  }

  Widget _buildVerticalItems() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6.w),
      child: Table(
        children: const [
          TableRow(children: [
            VerticalItem("WOK", "${_menuVerticalPath}0.jpg"),
            VerticalItem("ЛАНЧ-МЕНЮ", "${_menuVerticalPath}1.jpg")
          ]),
          TableRow(children: [
            VerticalItem("СУШИ И РОЛЛЫ", "${_menuVerticalPath}2.jpg"),
            VerticalItem("СЕТЫ", "${_menuVerticalPath}3.jpg")
          ]),
          TableRow(children: [
            VerticalItem("КОНСТРУКТОР WOK", "${_menuVerticalPath}4.jpg"),
            VerticalItem("СОУСЫ И ГАРНИР", "${_menuVerticalPath}5.jpg")
          ]),
          TableRow(children: [
            VerticalItem("ДЕСЕРТЫ", "${_menuVerticalPath}6.jpg"),
            VerticalItem("ГОРЯЧЕЕ И САЛАТЫ", "${_menuVerticalPath}7.jpg")
          ]),
          TableRow(children: [
            VerticalItem("НАПИТКИ", "${_menuVerticalPath}8.jpg"),
            VerticalItem("ПРИБОРЫ", "${_menuVerticalPath}9.jpg")
          ]),
        ],
      ),
    );
  }

  FloatingActionButton _buildFloatingActionButton() {
    return FloatingActionButton(
      onPressed: () {},
      child: const Icon(Icons.search_rounded),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          _buildHorizontalItems(),
          _buildVerticalItems(),
        ],
      ),
      appBar: _buildAppBar(),
      floatingActionButton: SizedBox(
        height: 47.h,
        width: 47.w,
        child: _buildFloatingActionButton(),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _horizontalPageController.dispose();
    _horizontalPageTimer?.cancel();
  }
}
