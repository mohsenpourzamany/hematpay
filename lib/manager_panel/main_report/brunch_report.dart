// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:hematpay/mainmenu/money_bag.dart';
import 'package:hematpay/mainmenuscreen/send_money/send_money_screen.dart';
import 'package:hematpay/mainmenuscreen/sett_screen/setting_page.dart';
import 'package:hematpay/manager_panel/manager_panel_main_page.dart';
import 'package:hematpay/screen/main_screen.dart';
import 'package:hematpay/user_account/notification_user.dart';
import 'package:hematpay/user_account/user_panel/currency_rate.dart';
import 'package:hematpay/user_account/user_panel/user_account.dart';
import 'package:hematpay/widgets/card_balance.dart';
import 'package:hematpay/widgets/search_box.dart';

class BrunchReport extends StatefulWidget {
  const BrunchReport({super.key});

  @override
  State<BrunchReport> createState() => _BrunchReportState();
}

class _BrunchReportState extends State<BrunchReport> {
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
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedFontSize: 15,
        selectedLabelStyle:
            const TextStyle(color: Colors.white, fontFamily: 'vazir'),
        unselectedLabelStyle:
            const TextStyle(color: Colors.white, fontSize: 14),
        backgroundColor: const Color.fromARGB(255, 250, 250, 250),
        fixedColor: const Color.fromARGB(255, 255, 255, 255),
        unselectedItemColor: const Color.fromARGB(255, 251, 251, 251),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const MainScreen();
                    },
                  ),
                );
              },
              child: const Icon(
                Icons.home,
                size: 40,
                color: Color(0xffffffff),
              ),
            ),
            label: 'خانه',
            backgroundColor: const Color(0xff3A3A3A),
          ),
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const SendMoneyScreen();
                    },
                  ),
                );
              },
              child: const Icon(
                Icons.send_to_mobile,
                size: 35,
                color: Color(0xffffffff),
              ),
            ),
            label: 'ارسال',
            backgroundColor: const Color(0xff3A3A3A),
          ),
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const CurrencyRate();
                    },
                  ),
                );
              },
              child: const Icon(
                Icons.currency_exchange,
                size: 35,
                color: Color(0xffffffff),
              ),
            ),
            label: 'نرخ ارز',
            backgroundColor: const Color(0xff3A3A3A),
          ),
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const MoneyBag();
                    },
                  ),
                );
              },
              child: const Icon(
                Icons.account_balance_wallet,
                size: 35,
                color: Color(0xffffffff),
              ),
            ),
            label: 'حساب',
            backgroundColor: const Color(0xff3A3A3A),
          ),
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const SettingPage();
                    },
                  ),
                );
              },
              child: const Icon(
                Icons.settings,
                size: 40,
                color: Color(0xffffffff),
              ),
            ),
            label: 'تنظیمات',
            backgroundColor: const Color(0xff3A3A3A),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: [
              SizedBox(
                width: double.infinity,
                child: Image(
                  width: double.infinity,
                  image: AssetImage('assets/images/sbg.jpg'),
                ),
              ),
              CardBalance(),
              SingleChildScrollView(
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 5),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(50)),
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 350, top: 20),
                        child: IconButton(
                          icon: Image.asset('assets/icon/back.png'),
                          iconSize: 35,
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) {
                                  return const ManagerPanelMainPage();
                                },
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 25, right: 25, top: 25),
                        child: Column(
                          children: [
                            Text(
                              'گزارش گردش حساب مشتریان، شعب / نمایندگان',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'vazir'),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                                height: 45,
                                width: 350,
                                color: Colors.transparent,
                                child: SearchBox()),
                            SizedBox(
                              height: 25,
                            ),
                            Container(
                              width: 340,
                              height: 59,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Directionality(
                                textDirection: TextDirection.rtl,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '48.348',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'vazir'),
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      '\u0024',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'vazir'),
                                    ),
                                    SizedBox(
                                      width: 70,
                                    ),
                                    Text(
                                      'موجودی در گردش',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'vazir'),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Container(
                              width: 350,
                              height: 65,
                              decoration: BoxDecoration(
                                color: Color(0xffF8F9FC),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '8.348',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'vazir'),
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    '\u0024',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'vazir'),
                                  ),
                                  SizedBox(
                                    width: 70,
                                  ),
                                  Text(
                                    ' محسن پورزمانی نجات',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'vazir'),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Container(
                              width: 350,
                              height: 65,
                              decoration: BoxDecoration(
                                color: Color(0xffF8F9FC),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '5.200',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'vazir'),
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    '\u0024',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'vazir'),
                                  ),
                                  SizedBox(
                                    width: 70,
                                  ),
                                  Text(
                                    'احمد صمیم ابراهیمی',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'vazir'),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 300,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
