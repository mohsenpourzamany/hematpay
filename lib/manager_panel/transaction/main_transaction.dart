import 'package:flutter/material.dart';
import 'package:hematpay/manager_panel/main_report/brunch_report.dart';
import 'package:hematpay/manager_panel/manager_panel_main_page.dart';
import 'package:hematpay/user_account/notification_user.dart';
import 'package:hematpay/user_account/user_panel/user_account.dart';
import 'package:hematpay/widgets/card_balance.dart';

class MainTransaction extends StatelessWidget {
  const MainTransaction({super.key});

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
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 75),
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
              const SizedBox(
                width: double.infinity,
                child: Image(
                  width: double.infinity,
                  image: AssetImage('assets/images/sbg.jpg'),
                ),
              ),
              const CardBalance(),
              SingleChildScrollView(
                child: Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 173),
                  decoration: const BoxDecoration(
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
                            const Text(
                              'معاملات',
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'vazir'),
                            ),
                            const SizedBox(
                              height: 20,
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
                                margin: const EdgeInsets.only(left: 5),
                                child: Container(
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                          width: 2, color: Colors.black26),
                                    ),
                                  ),
                                  child: const Row(
                                    children: [
                                      Icon(
                                        Icons.arrow_circle_left,
                                        size: 30,
                                        color:
                                            Color.fromARGB(255, 199, 134, 55),
                                      ),
                                      Spacer(),
                                      Directionality(
                                        textDirection: TextDirection.rtl,
                                        child: Text(
                                          '۱ -  نقدی و بانک ',
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
                            const SizedBox(
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
                                margin: const EdgeInsets.only(left: 5),
                                child: Container(
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                          width: 2, color: Colors.black26),
                                    ),
                                  ),
                                  child: const Row(
                                    children: [
                                      Icon(
                                        Icons.arrow_circle_left,
                                        size: 30,
                                        color:
                                            Color.fromARGB(255, 199, 134, 55),
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
                            const SizedBox(
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
                                margin: const EdgeInsets.only(left: 5),
                                child: Container(
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                          width: 2, color: Colors.black26),
                                    ),
                                  ),
                                  child: const Row(
                                    children: [
                                      Icon(
                                        Icons.arrow_circle_left,
                                        size: 30,
                                        color:
                                            Color.fromARGB(255, 199, 134, 55),
                                      ),
                                      Spacer(),
                                      Directionality(
                                        textDirection: TextDirection.rtl,
                                        child: Text(
                                          '۳ -   متفرقه نقدی و بانک',
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
                            const SizedBox(
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
                                margin: const EdgeInsets.only(left: 5),
                                child: Container(
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                          width: 2, color: Colors.black26),
                                    ),
                                  ),
                                  child: const Row(
                                    children: [
                                      Icon(
                                        Icons.arrow_circle_left,
                                        size: 30,
                                        color:
                                            Color.fromARGB(255, 199, 134, 55),
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
                            const SizedBox(
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
                                margin: const EdgeInsets.only(left: 5),
                                child: Container(
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                          width: 2, color: Colors.black26),
                                    ),
                                  ),
                                  child: const Row(
                                    children: [
                                      Icon(
                                        Icons.arrow_circle_left,
                                        size: 30,
                                        color:
                                            Color.fromARGB(255, 199, 134, 55),
                                      ),
                                      Spacer(),
                                      Directionality(
                                        textDirection: TextDirection.rtl,
                                        child: Text(
                                          '۵ - انتقلات حساب به حساب',
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
                            const SizedBox(
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
                                margin: const EdgeInsets.only(left: 5),
                                child: Container(
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                          width: 2, color: Colors.black26),
                                    ),
                                  ),
                                  child: const Row(
                                    children: [
                                      Icon(
                                        Icons.arrow_circle_left,
                                        size: 30,
                                        color:
                                            Color.fromARGB(255, 199, 134, 55),
                                      ),
                                      Spacer(),
                                      Directionality(
                                        textDirection: TextDirection.rtl,
                                        child: Text(
                                          '۶ - انتقال حواله ها',
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
                            const SizedBox(
                              height: 200,
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
