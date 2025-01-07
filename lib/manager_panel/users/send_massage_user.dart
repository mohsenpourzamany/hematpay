// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:hematpay/manager_panel/users/customer_list.dart';
import 'package:hematpay/user_account/notification_user.dart';
import 'package:hematpay/user_account/user_panel/user_account.dart';

class SendMassageUser extends StatefulWidget {
  const SendMassageUser({super.key});

  @override
  State<SendMassageUser> createState() => _SendMassageUserState();
}

class _SendMassageUserState extends State<SendMassageUser> {
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
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 125),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 254, 254, 254),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 350, top: 10),
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
                    Padding(
                      padding: const EdgeInsets.only(left: 35, right: 25),
                      child: Column(
                        children: [
                          Text(
                            'پیام به مشتریان',
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
                                    'حامد قوام',
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
                                        borderRadius: BorderRadius.circular(10),
                                        color:
                                            Color.fromARGB(249, 252, 252, 252)),
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
                                            backgroundColor: Color(0xff34C759),
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
    );
  }
}
