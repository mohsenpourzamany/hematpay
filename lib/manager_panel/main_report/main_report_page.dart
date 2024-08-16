// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:hematpay/mainmenu/money_bag.dart';
import 'package:hematpay/mainmenuscreen/send_money/send_money_screen.dart';
import 'package:hematpay/mainmenuscreen/sett_screen/setting_page.dart';
import 'package:hematpay/manager_panel/main_report/brunch_report.dart';
import 'package:hematpay/manager_panel/manager_panel_main_page.dart';
import 'package:hematpay/screen/main_screen.dart';
import 'package:hematpay/user_account/notification_user.dart';
import 'package:hematpay/user_account/user_panel/currency_rate.dart';
import 'package:hematpay/user_account/user_panel/user_account.dart';
import 'package:hematpay/widgets/card_balance.dart';

class MainReportPage extends StatefulWidget {
  const MainReportPage({super.key});

  @override
  State<MainReportPage> createState() => _MainReportPageState();
}

class _MainReportPageState extends State<MainReportPage> {
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
                  margin: EdgeInsets.only(top: 155),
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
                        padding: const EdgeInsets.only(left: 25, right: 25),
                        child: Column(
                          children: [
                            Text(
                              'صورت حساب و گزارشات',
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'vazir'),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 155),
                              child: TextButton(
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return const BrunchReport();
                                      },
                                    ),
                                  );
                                },
                                child: Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: Text(
                                    '۱ - گزارش گردش نمایندگان',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'vazir',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Divider(
                              thickness: 2,
                            ),
                            SizedBox(
                              height: 400,
                            )
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
