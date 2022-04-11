import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterapp/src/pages/other/other_page.dart';
import 'package:flutterapp/src/pages/page_export.dart';
import 'package:flutterapp/src/config/theme.dart' as custom_theme;

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  List pages = const [
    HomePage(),
    WalletPage(),
    FavoritePage(),
    OtherPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: custom_theme.Theme.mBackgroundColor,
        title: const Text(
          "Saveone market",
          style: TextStyle(
            color: custom_theme.Theme.mPrimaryColor,
          ),
        ),
        elevation: 0,
      ),
      backgroundColor: custom_theme.Theme.mBackgroundColor,
      body: pages[_selectedIndex],
      bottomNavigationBar: Container(
        height: 64,
        decoration: BoxDecoration(
          color: custom_theme.Theme.mBottomNavigationBarBoxColor,
          boxShadow: [
            custom_theme.Theme.mBottomNavigationBarBoxShadow,
          ],
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(24),
          ),
        ),
        child: BottomNavigationBar(
          selectedItemColor:
              custom_theme.Theme.mBottomNavigationBarSelectedIconColor,
          unselectedItemColor:
              custom_theme.Theme.mBottomNavigationBarNonSelectedIconColor,
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          showUnselectedLabels: false,
          selectedLabelStyle: const TextStyle(
            height: 1.5,
            letterSpacing: 0.8,
          ),
          elevation: 0,
          onTap: _onItemTapped,
          items: [
            _bottomNavigationBatItemCustom(
                'assets/icons/layout-grid2.svg', 'App'),
            _bottomNavigationBatItemCustom(
                'assets/icons/bag-dollar.svg', 'Wallet'),
            _bottomNavigationBatItemCustom('assets/icons/heart.svg', 'Faverit'),
            _bottomNavigationBatItemCustom('assets/icons/menu-alt.svg', 'List'),
          ],
        ),
      ),
    );
  }

  _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  _bottomNavigationBatItemCustom(String path, String label) =>
      BottomNavigationBarItem(
        icon: SvgPicture.asset(
          path,
          width: 22,
          height: 22,
          color: custom_theme.Theme.mBottomNavigationBarNonSelectedIconColor,
        ),
        activeIcon: SvgPicture.asset(
          path,
          width: 22,
          height: 22,
          color: custom_theme.Theme.mBottomNavigationBarSelectedIconColor,
        ),
        label: label,
      );
}
