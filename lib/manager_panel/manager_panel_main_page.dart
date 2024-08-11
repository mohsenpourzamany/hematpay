// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:hematpay/mainmenu/money_bag.dart';
import 'package:hematpay/mainmenu/send_money.dart';
import 'package:hematpay/mainmenuscreen/sett_screen/setting_page.dart';
import 'package:hematpay/manager_panel/customer_list.dart';
import 'package:hematpay/screen/main_screen.dart';
import 'package:hematpay/user_account/notification_user.dart';
import 'package:hematpay/user_account/user_panel/currency_rate.dart';
import 'package:hematpay/user_account/user_panel/user_account.dart';
import 'package:hematpay/widgets/card_balance.dart';

class ManagerPanelMainPage extends StatefulWidget {
  const ManagerPanelMainPage({super.key});

  @override
  State<ManagerPanelMainPage> createState() => _ManagerPanelMainPageState();
}

class _ManagerPanelMainPageState extends State<ManagerPanelMainPage> {
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
                  margin: EdgeInsets.only(top: 1),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
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
                                  return const MainScreen();
                                },
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 5),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 30, right: 30),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      color: Colors.black12, width: 3)),
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 10, left: 75),
                                    child: Text(
                                      'موجودی صندوق اصلی همت پی',
                                      style: TextStyle(
                                          fontFamily: 'vazir',
                                          fontSize: 17,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.only(left: 15, bottom: 10),
                                    child: Row(
                                      children: [
                                        Text(
                                          ('\u0024'),
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'vazir'),
                                        ),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        Text(
                                          '754.971',
                                          style: TextStyle(
                                              fontFamily: 'vazir',
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Column(
                              children: [
                                Text(
                                  'گزارش گردش حساب در هفته گذشته',
                                  style: TextStyle(
                                      fontFamily: 'vazir',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Image(
                                    image: AssetImage(
                                        'assets/images/Chart(1).png'))
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return const CustomerList();
                                    },
                                  ),
                                );
                              },
                              child: Container(
                                width: 350,
                                height: 90,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(252, 238, 238, 238),
                                    borderRadius: BorderRadius.circular(7)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 15),
                                      child: Column(
                                        children: [
                                          Text(
                                            'لیست مشتریان',
                                            style: TextStyle(
                                                fontFamily: 'vazir',
                                                fontSize: 17,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          SizedBox(
                                            height: 7,
                                          ),
                                          Text(
                                            'ارسال پیام ٫ حذف ٫ اضافه',
                                            style: TextStyle(
                                                fontFamily: 'vazir',
                                                fontSize: 15,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 28),
                                      height: 55,
                                      decoration: BoxDecoration(
                                        border: Border(
                                          left: BorderSide(
                                              width: 3, color: Colors.black12),
                                        ),
                                      ),
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 27),
                                        child: Icon(
                                          Icons.person_3_outlined,
                                          size: 25,
                                          color: Colors.black26,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: 350,
                                height: 90,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(252, 238, 238, 238),
                                    borderRadius: BorderRadius.circular(7)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 15),
                                      child: Column(
                                        children: [
                                          Text(
                                            'لیست شب ٫ نمایندگان',
                                            style: TextStyle(
                                                fontFamily: 'vazir',
                                                fontSize: 17,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          SizedBox(
                                            height: 7,
                                          ),
                                          Text(
                                            'اضافه  ٫ ویرایش ٫ حذف',
                                            style: TextStyle(
                                                fontFamily: 'vazir',
                                                fontSize: 15,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30),
                                      height: 55,
                                      decoration: BoxDecoration(
                                        border: Border(
                                          left: BorderSide(
                                              width: 3, color: Colors.black12),
                                        ),
                                      ),
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 28),
                                        child: Icon(
                                          Icons.person_3_outlined,
                                          size: 25,
                                          color: Colors.black26,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: 350,
                                height: 90,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(252, 238, 238, 238),
                                    borderRadius: BorderRadius.circular(7)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 15),
                                      child: Column(
                                        children: [
                                          Text(
                                            ' صندوق اصلی وبانک  ',
                                            style: TextStyle(
                                                fontFamily: 'vazir',
                                                fontSize: 17,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          SizedBox(
                                            height: 7,
                                          ),
                                          Text(
                                            ' اضافه ٫ ویرایش ٫ حذف',
                                            style: TextStyle(
                                                fontFamily: 'vazir',
                                                fontSize: 15,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 35),
                                      height: 55,
                                      decoration: BoxDecoration(
                                        border: Border(
                                          left: BorderSide(
                                              width: 3, color: Colors.black12),
                                        ),
                                      ),
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 26),
                                        child: Icon(
                                          Icons.person_3_outlined,
                                          size: 25,
                                          color: Colors.black26,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: 350,
                                height: 90,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(252, 238, 238, 238),
                                    borderRadius: BorderRadius.circular(7)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 15),
                                      child: Column(
                                        children: [
                                          Text(
                                            'گزارشات کلی',
                                            style: TextStyle(
                                                fontFamily: 'vazir',
                                                fontSize: 17,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          SizedBox(
                                            height: 7,
                                          ),
                                          Text(
                                            ' ارسال ',
                                            style: TextStyle(
                                                fontFamily: 'vazir',
                                                fontSize: 15,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 98),
                                      height: 55,
                                      decoration: BoxDecoration(
                                        border: Border(
                                          left: BorderSide(
                                              width: 3, color: Colors.black12),
                                        ),
                                      ),
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 28),
                                        child: Icon(
                                          Icons.person_3_outlined,
                                          size: 25,
                                          color: Colors.black26,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 45,
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
