import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sushi_house_ui/common/widgets/red_button.dart';
import 'package:sushi_house_ui/screens/contacts/view/widgets/circle_icon.dart';
import 'package:sushi_house_ui/screens/contacts/view/widgets/contacts.dart';

import 'widgets/advanced.dart';
import 'widgets/row_circle_info.dart';

TextStyle _textOrganizationStyle = TextStyle(
  fontWeight: FontWeight.w500,
  fontSize: 12.sp,
);

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({super.key});

  AppBar _buildAppBar() {
    return AppBar(
      title: Text(
        "Sushi House",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15.sp,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget _buildOnMapButton() {
    return Container(
      height: 25.h,
      margin: EdgeInsets.fromLTRB(115.w, 12.h, 115.w, 20.h),
      child: const RedButton("НА КАРТЕ"),
    );
  }

  Widget _buildRowIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleIcon(
            faIcon: const FaIcon(
              FontAwesomeIcons.facebook,
              color: Colors.white,
            ),
            color: const Color.fromARGB(255, 82, 82, 82),
            radius: 17.r),
        SizedBox(
          width: 15.w,
        ),
        CircleIcon(
            faIcon: const FaIcon(
              FontAwesomeIcons.instagram,
              color: Colors.white,
            ),
            color: const Color.fromARGB(255, 82, 82, 82),
            radius: 17.r),
        SizedBox(
          width: 15.w,
        ),
        CircleIcon(
            faIcon: const FaIcon(
              FontAwesomeIcons.vk,
              color: Colors.white,
            ),
            color: const Color.fromARGB(255, 82, 82, 82),
            radius: 17.r),
        SizedBox(
          width: 15.w,
        ),
        CircleIcon(
            faIcon: const FaIcon(
              FontAwesomeIcons.youtube,
              color: Colors.white,
            ),
            color: const Color.fromARGB(255, 82, 82, 82),
            radius: 17.r),
      ],
    );
  }

  Widget _buildSharedApp() {
    return Container(
      margin: EdgeInsets.only(left: 15.w, top: 9.h, bottom: 20.h),
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RowCircleInfo(
            iconData: FontAwesomeIcons.share,
            awesomeSize: 12.sp,
            label: "Поделиться приложением",
          ),
        ],
      ),
    );
  }

  Widget _buildSushiHouseOrganization() {
    return Container(
      margin: EdgeInsets.only(left: 15.w, top: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Sushi House | OOO \"Глобалпрогрупп\"",
            style: _textOrganizationStyle,
          ),
          SizedBox(
            height: 12.h,
          ),
          Text(
              "Время и стоимость доставки зависит от зоны и может отличаться от указанной в зависимости от загруженности заведения. По всем вопросам, связанным с актуальным временем доставки или самовывоза, обращайтесь по телефону call-центра 7440 или в онлайн чат на сайте.    ",
              style: _textOrganizationStyle),
          SizedBox(
            height: 12.h,
          ),
          Text(
              "OOO \"Глобалпрогрупп\" г.Минск, ул. Казинца, 123, оф.6 УНП 192610415 Свидетельство о государственной регистрации от 24 февраля 2016г. выдано Мингорисполкомом, Зарегистрирован в Торговом реестре Республики Беларусь №331264 от 18.05.2016",
              style: _textOrganizationStyle),
          SizedBox(
            height: 12.h,
          ),
          Text("UI Сделан Смирновом Владиславом",
              style: _textOrganizationStyle),
          SizedBox(
            height: 5.h,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: _buildAppBar(),
        body: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const Contacts(),
            _buildOnMapButton(),
            _buildRowIcons(),
            _buildSharedApp(),
            const Additionally(),
            _buildSushiHouseOrganization(),
          ],
        ));
  }
}
