// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:hematpay/mainmenu/money_bag.dart';
import 'package:hematpay/mainmenu/send_money.dart';
import 'package:hematpay/mainmenuscreen/sett_screen/setting_page.dart';
import 'package:hematpay/manager_panel/main_bank/main_bank_balance.dart';
import 'package:hematpay/screen/main_screen.dart';
import 'package:hematpay/user_account/notification_user.dart';
import 'package:hematpay/user_account/user_panel/currency_rate.dart';
import 'package:hematpay/user_account/user_panel/user_account.dart';
import 'package:hematpay/widgets/card_balance.dart';

class CreateWallet extends StatefulWidget {
  const CreateWallet({super.key});

  @override
  State<CreateWallet> createState() => _CreateWalletState();
}

class _CreateWalletState extends State<CreateWallet> {
  bool isChecked = false;
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
                      return const SendMoney();
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
                  margin: EdgeInsets.only(top: 118),
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
                                  return const MainBankBalance();
                                },
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25, right: 25),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xffF8F9FC),
                            border: Border.all(
                              color: Color(0xffD5D5D5),
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 35),
                            child: Column(
                              children: [
                                Text(
                                  'ایجاد کیف پول جدید',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'vazir'),
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                Container(
                                  width: 300,
                                  height: 39,
                                  color: Colors.white,
                                  child: TextField(
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'عنوان کیف پول را وارد کنید',
                                      labelStyle: TextStyle(
                                          color: Color(0xffC8D1E1),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'vazir'),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width: 300,
                                  height: 39,
                                  color: Colors.white,
                                  child: TextField(
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelStyle: TextStyle(
                                          color: Color(0xffC8D1E1),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'vazir'),
                                      border: OutlineInputBorder(),
                                      labelText:
                                          ' مبلغ شارژ کیف پول را وارد کنید',
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width: 300,
                                  height: 39,
                                  color: Colors.white,
                                  child: TextField(
                                    obscureText: false,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelStyle: TextStyle(
                                            color: Color(0xffC8D1E1),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'vazir'),
                                        labelText:
                                            'نام کاربر، شعبه / نمایندگی را وارد کنید...'),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: Row(
                                    children: [
                                      Checkbox(
                                        checkColor: Colors.white,
                                        value: isChecked,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            isChecked = value!;
                                          });
                                        },
                                      ),
                                      Text(
                                        'ایجاد کیف پول برای همه کاربران',
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w300,
                                            fontFamily: 'vazir'),
                                      )
                                    ],
                                  ),
                                ),
                                Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: Row(
                                    children: [
                                      Checkbox(
                                        checkColor: Colors.white,
                                        value: isChecked,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            isChecked = value!;
                                          });
                                        },
                                      ),
                                      Text(
                                        'ایجاد کیف پول برای همه شعب / نمایندگان',
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w300,
                                            fontFamily: 'vazir'),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 35,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        // Navigator.of(context).push(
                                        //   MaterialPageRoute(
                                        //     builder: (context) {
                                        //       return const SendMassageUser();
                                        //     },
                                        //   ),
                                        // );
                                      },
                                      style: ElevatedButton.styleFrom(
                                        minimumSize: Size(140, 43),
                                        backgroundColor: Color(0xff34C759),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                      ),
                                      child: Text(
                                        ' تایید',
                                        style: TextStyle(
                                            color: Color(0xffffffff),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'vazir'),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        // Navigator.of(context).push(
                                        //   MaterialPageRoute(
                                        //     builder: (context) {
                                        //       return const SendMassageUser();
                                        //     },
                                        //   ),
                                        // );
                                      },
                                      style: ElevatedButton.styleFrom(
                                        minimumSize: Size(140, 43),
                                        backgroundColor: Color(0xff898989),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                      ),
                                      child: Text(
                                        'انصراف',
                                        style: TextStyle(
                                            color: Color(0xffffffff),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'vazir'),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
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
