// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hematpay/mainmenuscreen/sett_screen/setting_page.dart';
import 'package:hematpay/screen/currency_exchange_page.dart';
import 'package:hematpay/screen/main_page_screen.dart';
import 'package:hematpay/user_account/notification_user.dart';
import 'package:hematpay/screen/currency_rate.dart';
import 'package:hematpay/user_account/user_panel/my_accounts/my_accounts.dart';
import 'package:hematpay/user_account/user_panel/user_account.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedBottomNavigationIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Image.asset('assets/images/Ellipse.png'),
              iconSize: 35,
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const UserAccount();
                    },
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 75),
              child: Column(
                children: [
                  Text(
                    'سلام حامد ',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    'به همت پی خوش آمدی',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),
            IconButton(
              icon: Image.asset('assets/images/notification-red.png'),
              iconSize: 35,
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const NotificationUser();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: IndexedStack(
        index: selectedBottomNavigationIndex,
        children: getScreen(),
      ),
      bottomNavigationBar: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
          child: BottomNavigationBar(
            fixedColor: Color.fromARGB(255, 195, 165, 106),
            onTap: (int index) {
              setState(() {
                selectedBottomNavigationIndex = index;
              });
            },
            currentIndex: selectedBottomNavigationIndex,
            selectedLabelStyle: const TextStyle(
                fontFamily: 'vazir',
                fontSize: 16,
                color: Color.fromARGB(255, 195, 165, 106),
                fontWeight: FontWeight.w500),
            unselectedLabelStyle: TextStyle(
                fontFamily: 'vazir',
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w400),
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_filled,
                  size: 40,
                  color: Colors.grey,
                ),
                activeIcon: Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Color.fromARGB(255, 195, 165, 106),
                        blurRadius: 20,
                        spreadRadius: -9,
                        offset: Offset(0, 10))
                  ]),
                  child: Icon(
                    Icons.home_filled,
                    size: 40,
                    color: Color.fromARGB(255, 170, 108, 67),
                  ),
                ),
                label: 'خانه',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.attach_money,
                  size: 40,
                  color: Colors.grey,
                ),
                activeIcon: Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Color.fromARGB(255, 195, 165, 106),
                        blurRadius: 20,
                        spreadRadius: -9,
                        offset: Offset(0, 10))
                  ]),
                  child: Icon(
                    Icons.attach_money,
                    size: 40,
                    color: Color.fromARGB(255, 170, 108, 67),
                  ),
                ),
                label: 'نرخ ارز',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.currency_exchange_rounded,
                  size: 40,
                  color: Colors.grey,
                ),
                activeIcon: Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Color.fromARGB(255, 195, 165, 106),
                        blurRadius: 20,
                        spreadRadius: -9,
                        offset: Offset(0, 10))
                  ]),
                  child: Icon(
                    Icons.currency_exchange_rounded,
                    size: 40,
                    color: Color.fromARGB(255, 170, 108, 67),
                  ),
                ),
                label: ' صرافی',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_balance_wallet_outlined,
                  size: 40,
                  color: Colors.grey,
                ),
                activeIcon: Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Color.fromARGB(255, 195, 165, 106),
                        blurRadius: 20,
                        spreadRadius: -9,
                        offset: Offset(0, 10))
                  ]),
                  child: Icon(
                    Icons.account_balance_wallet_outlined,
                    size: 40,
                    color: Color.fromARGB(255, 170, 108, 67),
                  ),
                ),
                label: 'حساب من',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                  size: 40,
                  color: Colors.grey,
                ),
                activeIcon: Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Color.fromARGB(255, 195, 165, 106),
                        blurRadius: 20,
                        spreadRadius: -9,
                        offset: Offset(0, 10))
                  ]),
                  child: Icon(
                    Icons.settings,
                    size: 40,
                    color: Color.fromARGB(255, 170, 108, 67),
                  ),
                ),
                label: 'تنظیمات',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<Widget> getScreen() {
  return <Widget>[
    MainPageScreen(),
    CurrencyRate(),
    CurrencyExchangePage(),
    MyAccounts(),
    SettingPage(),
  ];
}
