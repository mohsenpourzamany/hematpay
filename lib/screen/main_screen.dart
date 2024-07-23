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
import 'package:hematpay/widgets/card_balance.dart';
import 'package:hematpay/widgets/last_trans.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              width: 35,
              height: 35,
              image: AssetImage('assets/images/Ellipse.png'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 57),
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
            Image(
              width: 35,
              height: 35,
              image: AssetImage('assets/images/notification-red.png'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Color.fromARGB(255, 243, 243, 243),
            // currentIndex: _selectedBottomNavigationItem,
            onTap: (int index) {
              // setState(() {
              //   _selectedBottomNavigationItem = index;
              // });
            },
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                    width: 5,
                    height: 5,
                    child: Image.asset('assets/icon/Mainpage.png')),
                activeIcon: Image.asset('assets/icon/Mainpage.png'),
                label: 'Item1',
              ),
              BottomNavigationBarItem(
                icon: Container(
                    width: 38,
                    height: 38,
                    child: Image.asset('assets/icon/currency_exchange.png')),
                activeIcon: Image.asset('assets/icon/currency_exchange.png'),
                label: 'Item2',
              ),
              BottomNavigationBarItem(
                icon: Container(
                    width: 42,
                    height: 42,
                    child: Image.asset('assets/icon/settings.png')),
                activeIcon: Image.asset('assets/icon/settings.png'),
                label: 'Item3',
              ),
              BottomNavigationBarItem(
                // ignore: duplicate_ignore
                // ignore: sized_box_for_whitespace
                icon: Container(
                    width: 38,
                    height: 38,
                    child: Image.asset('assets/icon/cards.png')),
                activeIcon: Image.asset('assets/icon/cards.png'),
                label: 'Item4',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  width: 38,
                  height: 38,
                  decoration: BoxDecoration(),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: Image.asset('assets/icon/accounts.png'),
                    ),
                  ),
                ),
                activeIcon: Container(
                  width: 38,
                  height: 38,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Color(0xffF35383),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: Image.asset('assets/icon/accounts.png'),
                    ),
                  ),
                ),
                label: 'Item4',
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: [
              //       IndexedStack(
              //   index: _selectedBottomNavigationItem,
              //   children: getLayout(),
              // ),
              SizedBox(
                width: double.infinity,
                child: Image(
                  width: double.infinity,
                  image: AssetImage('assets/images/sbg.jpg'),
                ),
              ),
              CardBalance(),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 182),
                decoration: BoxDecoration(
                  color: Color.fromARGB(249, 254, 254, 254),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 40, right: 30),
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
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> getLayout() {
    return <Widget>[
      MainScreen(),
      // SearchScreen(),
      SettingPage(),
      // ActivityScreen(),
      // UserProfileScreen()
    ];
  }
}
