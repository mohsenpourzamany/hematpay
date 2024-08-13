// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:hematpay/mainmenu/money_bag.dart';
import 'package:hematpay/mainmenu/send_money.dart';
import 'package:hematpay/mainmenuscreen/sett_screen/setting_page.dart';
import 'package:hematpay/manager_panel/customer_list.dart';
import 'package:hematpay/manager_panel/send_massage_user.dart';
import 'package:hematpay/screen/main_screen.dart';
import 'package:hematpay/user_account/notification_user.dart';
import 'package:hematpay/user_account/user_panel/currency_rate.dart';
import 'package:hematpay/user_account/user_panel/user_account.dart';
import 'package:hematpay/widgets/card_balance.dart';

class SendMassageAllUsers extends StatefulWidget {
  const SendMassageAllUsers({super.key});

  @override
  State<SendMassageAllUsers> createState() => _SendMassageAllUsersState();
}

class _SendMassageAllUsersState extends State<SendMassageAllUsers> {
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
            icon: Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                      color: Color.fromARGB(255, 255, 255, 255), width: 1)),
              child: InkWell(
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
                  margin: EdgeInsets.only(top: 120),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 254, 254, 254),
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(50)),
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 350, top: 10),
                        child: IconButton(
                          icon: Image.asset('assets/icon/back.png'),
                          iconSize: 35,
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) {
                                  return const CustomerList();
                                },
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 35, right: 25),
                        child: Column(
                          children: [
                            Text(
                              'پیام به همه مشتریان',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'vazir'),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 2,
                                    color: Colors.black26,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(15, 0, 0, 0)),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  children: [
                                    Text(
                                      'کاربر گرامی :آقای / خانم / شرکت محترم ',
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'vazir'),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'آبادی حامد قوام',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'vazir'),
                                    ),
                                    SizedBox(height: 15),
                                    Container(
                                      width: 320,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 2,
                                            color: Colors.black26,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Color.fromARGB(
                                              249, 252, 252, 252)),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 15,
                                            right: 15,
                                            top: 25,
                                            bottom: 35),
                                        child: Text(
                                          " از اینکه از اپلیکیشن همت پی استفاده میکنید متشکریم هر سوالی دارید بپرسید .شما میتوانید جهت ارتباط با پشتیبانی اپلیکیشن بصورت ۲۴ ساعته و در ۷ روز هفته به شماره های قسمت ارتباط با ما پیام داده و یا به ما ایمیل بفرستید .ما منتظر پیشنهادات شما کاربر عزیز هستیم",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'vazir'),
                                          textDirection: TextDirection.rtl,
                                          textAlign: TextAlign.justify,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 40,
                                    ),
                                    Directionality(
                                      textDirection: TextDirection.rtl,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          ElevatedButton(
                                            onPressed: () {
                                              Navigator.of(context).push(
                                                MaterialPageRoute(
                                                  builder: (context) {
                                                    return const SendMassageUser();
                                                  },
                                                ),
                                              );
                                            },
                                            style: ElevatedButton.styleFrom(
                                              minimumSize: Size(140, 43),
                                              backgroundColor:
                                                  Color(0xff34C759),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                            ),
                                            child: Text(
                                              'ارسال کن',
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
                                              Navigator.of(context).push(
                                                MaterialPageRoute(
                                                  builder: (context) {
                                                    return const SendMassageUser();
                                                  },
                                                ),
                                              );
                                            },
                                            style: ElevatedButton.styleFrom(
                                              minimumSize: Size(140, 43),
                                              backgroundColor:
                                                  Color(0xff898989),
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
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 45,
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
