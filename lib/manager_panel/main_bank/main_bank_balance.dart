// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:hematpay/manager_panel/main_bank/create_user.dart';
import 'package:hematpay/manager_panel/main_bank/create_wallet.dart';
import 'package:hematpay/manager_panel/main_bank/transfer_to_users.dart';
import 'package:hematpay/manager_panel/manager_panel_main_page.dart';
import 'package:hematpay/user_account/notification_user.dart';
import 'package:hematpay/user_account/user_panel/user_account.dart';
import 'package:hematpay/widgets/main_card_balance.dart';

class MainBankBalance extends StatefulWidget {
  const MainBankBalance({super.key});

  @override
  State<MainBankBalance> createState() => _MainBankBalanceState();
}

class _MainBankBalanceState extends State<MainBankBalance> {
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
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 50),
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
                    Column(
                      children: [
                        Text(
                          'صندوق اصلی و دیگر حساب ها ',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'vazir'),
                        ),
                        MainCardBalance(),
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
                        Divider(
                          color: Color.fromARGB(216, 248, 249, 252),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) {
                                  return const CreateWallet();
                                },
                              ),
                            );
                          },
                          child: Container(
                            width: 340,
                            height: 86,
                            decoration: BoxDecoration(
                                color: Color(0xffF8F9FC),
                                borderRadius: BorderRadius.circular(15)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'ایجاد کیف پول جدید ',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'vazir'),
                                ),
                                Text(
                                  'از طریق این منو رای نماینگان و شعب کیف پول ایاد کنید ',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w300,
                                      fontFamily: 'vazir'),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) {
                                  return const TransferToUsers();
                                },
                              ),
                            );
                          },
                          child: Container(
                            width: 340,
                            height: 86,
                            decoration: BoxDecoration(
                                color: Color(0xffF8F9FC),
                                borderRadius: BorderRadius.circular(15)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'انتقال به کاربر ٫ شعبه ٫ نماینده',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'vazir'),
                                ),
                                Text(
                                  'مبلغ انتقالی از این طریق به کیف پول منتخب واریز میگردد',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w300,
                                      fontFamily: 'vazir'),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) {
                                  return const CreateUser();
                                },
                              ),
                            );
                          },
                          child: Container(
                            width: 340,
                            height: 86,
                            decoration: BoxDecoration(
                                color: Color(0xffF8F9FC),
                                borderRadius: BorderRadius.circular(15)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  ' ایجاد کاربر ٫ شعبه ٫ نماینده',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'vazir'),
                                ),
                                Text(
                                  'از این طریق کاربر ٫شعبه و یا نمانده خود را ایجاد کنید ',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w300,
                                      fontFamily: 'vazir'),
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
