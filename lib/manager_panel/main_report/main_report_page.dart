// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:hematpay/manager_panel/main_report/brunch_report.dart';
import 'package:hematpay/manager_panel/manager_panel_main_page.dart';
import 'package:hematpay/user_account/notification_user.dart';
import 'package:hematpay/user_account/user_panel/user_account.dart';

class MainReportPage extends StatefulWidget {
  const MainReportPage({super.key});

  @override
  State<MainReportPage> createState() => _MainReportPageState();
}

class _MainReportPageState extends State<MainReportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 170, 108, 67),
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
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color.fromARGB(255, 16, 6, 1),
              Color.fromARGB(255, 46, 19, 2),
              const Color.fromARGB(0, 65, 46, 40),
              Color.fromARGB(255, 17, 8, 0),
            ],
          ),
        ),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 120),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 350, top: 5),
                      child: IconButton(
                        icon: Icon(Icons.cancel_outlined),
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
                            height: 50,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const BrunchReport();
                                  },
                                ),
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 5),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                        width: 2, color: Colors.black26),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.arrow_circle_left,
                                      size: 30,
                                      color: Color.fromARGB(255, 199, 134, 55),
                                    ),
                                    Spacer(),
                                    Directionality(
                                      textDirection: TextDirection.rtl,
                                      child: Text(
                                        '۱ - گزارش گردش نمایندگان',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'vazir',
                                            color: Colors.black45),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const BrunchReport();
                                  },
                                ),
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 5),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                        width: 2, color: Colors.black26),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.arrow_circle_left,
                                      size: 30,
                                      color: Color.fromARGB(255, 199, 134, 55),
                                    ),
                                    Spacer(),
                                    Directionality(
                                      textDirection: TextDirection.rtl,
                                      child: Text(
                                        '۲ -   عواید و مصارف',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'vazir',
                                            color: Colors.black45),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const BrunchReport();
                                  },
                                ),
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 5),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                        width: 2, color: Colors.black26),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.arrow_circle_left,
                                      size: 30,
                                      color: Color.fromARGB(255, 199, 134, 55),
                                    ),
                                    Spacer(),
                                    Directionality(
                                      textDirection: TextDirection.rtl,
                                      child: Text(
                                        '۳ -   نقدی و بانک',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'vazir',
                                            color: Colors.black45),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const BrunchReport();
                                  },
                                ),
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 5),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                        width: 2, color: Colors.black26),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.arrow_circle_left,
                                      size: 30,
                                      color: Color.fromARGB(255, 199, 134, 55),
                                    ),
                                    Spacer(),
                                    Directionality(
                                      textDirection: TextDirection.rtl,
                                      child: Text(
                                        '۴ -   تبادل اسعار',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'vazir',
                                            color: Colors.black45),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 290,
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
    );
  }
}
