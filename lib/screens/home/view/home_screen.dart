import 'package:flutter/material.dart';
import 'package:sushi_house_ui/screens/basket/view/basket_screen.dart';
import 'package:sushi_house_ui/screens/contacts/view/contacts_screen.dart';
import 'package:sushi_house_ui/screens/menu/view/menu_screen.dart';
import 'package:sushi_house_ui/screens/profile/view/profile_screen.dart';

const List<BottomNavigationBarItem> _bottomNavigationBarItems = [
  BottomNavigationBarItem(
    icon: Icon(
      Icons.menu_rounded,
    ),
    label: "Меню",
  ),
  BottomNavigationBarItem(
      icon: Icon(
        Icons.shopping_basket_outlined,
      ),
      label: "Корзина"),
  BottomNavigationBarItem(
      icon: Icon(
        Icons.contacts,
      ),
      label: "Контакты"),
  BottomNavigationBarItem(
      icon: Icon(
        Icons.person,
      ),
      label: "Профиль"),
];

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  PageView _buildPageView() {
    return PageView(
      physics: const NeverScrollableScrollPhysics(),
      controller: _pageController,
      onPageChanged: (value) => setState(() {
        _currentIndex = value;
      }),
      children: const [
        MenuScreen(),
        BasketScreen(),
        ContactsScreen(),
        ProfileScreen(),
      ],
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (value) => setState(() {
              _pageController.jumpToPage(value);
            }),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.w500,
        ),
        selectedFontSize: 12,
        unselectedFontSize: 10,
        showUnselectedLabels: true,
        items: _bottomNavigationBarItems);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildPageView(),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }
}
