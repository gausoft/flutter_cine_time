import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

import '../styles/colors.dart';
import '../widgets/titled_navigation_bar/titled_navigation_bar.dart';
import 'home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedPage = 0;
  final PageController _pageController = PageController();

  final _pages = <Widget>[
    const HomeScreen(),
    const Scaffold(body: Center(child: Text('Page 2'))),
    const Scaffold(body: Center(child: Text('Page 3'))),
    const Scaffold(body: Center(child: Text('Page 4'))),
  ];

  final List<TitledNavigationBarItem> items = [
    TitledNavigationBarItem(
      icon: const Icon(UniconsLine.home_alt),
    ),
    TitledNavigationBarItem(
      icon: const Icon(UniconsLine.film),
    ),
    TitledNavigationBarItem(
      icon: const Icon(UniconsLine.shopping_bag),
    ),
    TitledNavigationBarItem(
      icon: const Icon(UniconsLine.ticket),
    ),
  ];

  void onPageChanged(int page) {
    setState(() {
      _selectedPage = page;
    });
    _pageController.jumpToPage(page);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: PageView(
          controller: _pageController,
          children: _pages,
          onPageChanged: onPageChanged,
        ),
        bottomNavigationBar: TitledBottomNavigationBar(
          currentIndex: _selectedPage,
          onTap: onPageChanged,
          items: items,
          activeColor: AppColors.primaryColor,
          inactiveColor: AppColors.disabledColor,
        ),
      ),
    );
  }
}
