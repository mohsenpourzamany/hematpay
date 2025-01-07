// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:hematpay/manager_panel/manager_panel_main_page.dart';
import 'package:hematpay/manager_panel/users/send_massage_all_users.dart';
import 'package:hematpay/manager_panel/users/send_massage_user.dart';
import 'package:hematpay/manager_panel/users/upgrade_user_to_brunch.dart';
import 'package:hematpay/user_account/notification_user.dart';
import 'package:hematpay/user_account/user_panel/user_account.dart';
import 'package:hematpay/widgets/search_box.dart';

class CustomerList extends StatefulWidget {
  const CustomerList({super.key});

  @override
  State<CustomerList> createState() => _CustomerListState();
}

class _CustomerListState extends State<CustomerList> {
  // final List<String> entries = <String>['A', 'B', 'C'];
  // final List<int> colorCodes = <int>[600, 500, 100];

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
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 254, 254, 254),
                borderRadius: BorderRadius.circular(10),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 5),
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
                        Container(
                          margin: EdgeInsets.only(top: 20, left: 100),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const SendMassageAllUsers();
                                  },
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(40, 35),
                              backgroundColor:
                                  Color.fromARGB(255, 117, 117, 117),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            child: Text(
                              'ارسال پیام به همه مشتریان',
                              style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'vazir'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 35, right: 25),
                      child: Column(
                        children: [
                          Text(
                            'لیست مشتریان',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'vazir'),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Container(
                              height: 45,
                              width: 350,
                              color: Colors.transparent,
                              child: SearchBox()),
                          // ListView.separated(
                          //   padding: const EdgeInsets.all(8),
                          //   itemCount: entries.length,
                          //   itemBuilder: (BuildContext context, int index) {
                          //     return Container(
                          //       height: 50,
                          //       color: Colors.amber[colorCodes[index]],
                          //       child: Center(
                          //           child: Text('Entry ${entries[index]}')),
                          //     );
                          //   },
                          //   separatorBuilder:
                          //       (BuildContext context, int index) =>
                          //           const Divider(),
                          // ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(58, 201, 201, 201),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Directionality(
                              textDirection: TextDirection.rtl,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: 10),
                                      child: ElevatedButton(
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
                                          minimumSize: Size(35, 28),
                                          backgroundColor: Color(0xffffffff),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                        ),
                                        child: Text(
                                          'پیام',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: 'vazir'),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          'محسن پورزمانی',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: 'vazir'),
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'موجودی :',
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w300,
                                                  fontFamily: 'vazir'),
                                            ),
                                            SizedBox(
                                              width: 2,
                                            ),
                                            Text(
                                              '565.256',
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w300,
                                                  fontFamily: 'vazir'),
                                            ),
                                            SizedBox(
                                              width: 4,
                                            ),
                                            Text(
                                              '\u0024',
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: 'vazir'),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      width: 28,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (context) {
                                              return const UpgradeUserToBraunch();
                                            },
                                          ),
                                        );
                                      },
                                      child: Text(
                                        'ارتقاء...',
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'vazir'),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Container(
                                      height: 40,
                                      decoration: BoxDecoration(
                                        border: Border(
                                          right: BorderSide(
                                              color: Colors.black26, width: 2),
                                        ),
                                      ),
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Image(
                                          image: AssetImage(
                                              'assets/icon/trash.png'),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 450,
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
