// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:hematpay/mainmenu/money_bag.dart';
import 'package:hematpay/mainmenu/send_money.dart';
import 'package:hematpay/mainmenuscreen/sett_screen/setting_page.dart';
import 'package:hematpay/manager_panel/users/customer_list.dart';
import 'package:hematpay/manager_panel/users/send_massage_user.dart';
import 'package:hematpay/screen/main_screen.dart';
import 'package:hematpay/user_account/notification_user.dart';
import 'package:hematpay/screen/currency_rate.dart';
import 'package:hematpay/user_account/user_panel/user_account.dart';
import 'package:hematpay/widgets/card_balance.dart';
import 'package:hematpay/widgets/radio_widget/fainancial_access_radio.dart';

class UpgradeUserToBraunch extends StatefulWidget {
  const UpgradeUserToBraunch({super.key});

  @override
  State<UpgradeUserToBraunch> createState() => _UpgradeUserToBraunchState();
}

class _UpgradeUserToBraunchState extends State<UpgradeUserToBraunch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 170, 108, 67),
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
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 80),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 254, 254, 254),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 360, top: 5),
                      child: IconButton(
                        icon: Icon(Icons.cancel_outlined),
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
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        children: [
                          Text(
                            ' ارتقاء مشتری',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'vazir'),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Directionality(
                            textDirection: TextDirection.rtl,
                            child: Row(
                              children: [
                                Text(
                                  'آقای / خانم / شرکت :',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'vazir'),
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Text(
                                  'حامد قوام ',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'vazir'),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 400,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 239, 239, 239),
                              borderRadius: BorderRadius.circular(7),
                              border: Border.all(
                                width: 3,
                                color: Color(0xffc1c1c1),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Directionality(
                                textDirection: TextDirection.rtl,
                                child: Column(
                                  children: [
                                    Text(
                                      'دسترسی مالی ',
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'vazir'),
                                    ),
                                    Divider(),
                                    FinancialAccessRadio(),
                                    Divider(),
                                    Text(
                                      'دسترسی برنامه',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'vazir'),
                                    ),
                                    Divider(),
                                    Row(
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
                                            backgroundColor: Color(0xff34C759),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                          ),
                                          child: Text(
                                            'تایید',
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
                            height: 190,
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
