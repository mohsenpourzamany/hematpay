// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:hematpay/manager_panel/main_bank/main_bank_balance.dart';
import 'package:hematpay/user_account/notification_user.dart';
import 'package:hematpay/user_account/user_panel/user_account.dart';

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
      body: SingleChildScrollView(
        child: Container(
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
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 130),
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
                                      width: 25,
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
