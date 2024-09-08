// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:hematpay/manager_panel/brunch/brunch_list.dart';
import 'package:hematpay/manager_panel/main_report/main_report_page.dart';
import 'package:hematpay/manager_panel/transaction/main_transaction.dart';
import 'package:hematpay/manager_panel/users/customer_list.dart';
import 'package:hematpay/manager_panel/main_bank/main_bank_balance.dart';
import 'package:hematpay/screen/main_screen.dart';
import 'package:hematpay/user_account/notification_user.dart';
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
                                      margin:
                                          EdgeInsets.only(top: 15, left: 40),
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
                                    Spacer(),
                                    Container(
                                      margin: EdgeInsets.only(right: 30),
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
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return const BrunchList();
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
                                      margin:
                                          EdgeInsets.only(top: 15, left: 40),
                                      child: Column(
                                        children: [
                                          Text(
                                            'لیست شعب ٫ نمایندگان',
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
                                    Spacer(),
                                    Container(
                                      margin: EdgeInsets.only(right: 30),
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
                                          Icons.app_registration_rounded,
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
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return const MainBankBalance();
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
                                      margin:
                                          EdgeInsets.only(top: 15, left: 50),
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
                                    Spacer(),
                                    Container(
                                      margin: EdgeInsets.only(right: 30),
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
                                          Icons.account_balance_outlined,
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
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return const MainTransaction();
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
                                      margin:
                                          EdgeInsets.only(top: 15, left: 50),
                                      child: Column(
                                        children: [
                                          Text(
                                            'معاملات',
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
                                    Spacer(),
                                    Container(
                                      margin: EdgeInsets.only(right: 30),
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
                                          Icons.account_balance_outlined,
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
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return const MainReportPage();
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
                                      margin:
                                          EdgeInsets.only(top: 15, left: 90),
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
                                    Spacer(),
                                    Container(
                                      margin: EdgeInsets.only(right: 30),
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
                                          Icons.add_chart_rounded,
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
