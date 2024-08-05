// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:hematpay/mainmenu/aipay.dart';
import 'package:hematpay/mainmenu/bank_transfer.dart';
import 'package:hematpay/mainmenu/funds_box.dart';
import 'package:hematpay/mainmenu/money_bag.dart';
import 'package:hematpay/mainmenu/receive_money.dart';
import 'package:hematpay/mainmenu/send_money.dart';
import 'package:hematpay/mainmenu/settings.dart';
import 'package:hematpay/mainmenu/trans_history.dart';
import 'package:hematpay/mainmenuscreen/sett_screen/setting_page.dart';
import 'package:hematpay/user_account/notification_user.dart';
import 'package:hematpay/user_account/user_account.dart';
import 'package:hematpay/widgets/card_balance.dart';
import 'package:hematpay/widgets/last_trans.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Widget> pages = const [
    MainScreen(),
    // currencypage(),
    SettingPage(),
    SendMoney(),
    // accounts(),
  ];
  int currentPage = 0;

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
        currentIndex: currentPage,
        onTap: (value) {
          setState(() {
            currentPage = value;
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'خانه',
            backgroundColor: Color.fromARGB(255, 246, 174, 31),
          ),
          BottomNavigationBarItem(
            icon: Container(
                width: 50, height: 40, child: Icon(Icons.currency_exchange)),
            label: 'نرخ ارز',
            backgroundColor: Color.fromARGB(255, 243, 183, 65),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'تنظیمات',
            backgroundColor: Color.fromARGB(255, 255, 196, 77),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.send_to_mobile),
            label: 'ارسال',
            backgroundColor: Color.fromARGB(255, 243, 183, 65),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            label: 'حساب',
            backgroundColor: Color.fromARGB(255, 246, 174, 31),
          ),
        ],
      ),
      body: SingleChildScrollView(
        // pages[currentPage],
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
                  margin: EdgeInsets.only(top: 142),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(253, 253, 253, 253),
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
                                  return const MainScreen();
                                },
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 35, right: 25),
                        child: Wrap(
                          children: [
                            ReceiveMoney(),
                            SendMoney(),
                            BankTransfer(),
                            MoneyBag(),
                            AIPay(),
                            TransHistory(),
                            FundsBox(),
                            Settings(),
                            LastTrans(),
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
