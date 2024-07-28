import 'package:flutter/material.dart';
import 'package:hematpay/screen/main_screen.dart';
import 'package:hematpay/user_account/bill_pages.dart';
import 'package:hematpay/widgets/card_balance.dart';
import 'package:hematpay/widgets/tab_bill_account.dart';

class BillBank extends StatefulWidget {
  const BillBank({super.key});

  @override
  State<BillBank> createState() => _BillBankState();
}

class _BillBankState extends State<BillBank> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              width: 35,
              height: 35,
              image: AssetImage('assets/images/Ellipse.png'),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 90),
              child: Column(
                children: [
                  Text(
                    'سلام حامد ',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'vazir'),
                  ),
                  Text(
                    'به همت پی خوش آمدی',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'vazir'),
                  ),
                ],
              ),
            ),
            Image(
              width: 35,
              height: 35,
              image: AssetImage('assets/images/notification-red.png'),
            ),
          ],
        ),
      ),
      body: SafeArea(
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
            Directionality(
              textDirection: TextDirection.rtl,
              child: Container(
                width: double.infinity,
                margin: const EdgeInsets.only(top: 1),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(248, 253, 253, 253),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, left: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 360),
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
                          const Text(
                            'مانده حساب بانکی',
                            style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'vazir'),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    const Image(
                      image: AssetImage('assets/images/chart.png'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        //
                      },
                      child: Container(
                        margin: const EdgeInsets.only(left: 190),
                        width: 150,
                        height: 25,
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 1, color: Colors.black54))),
                        child: const Column(
                          children: [
                            Text(
                              'دلار : ۶۵۴۳',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'vazir'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        //
                      },
                      child: Container(
                        margin: const EdgeInsets.only(left: 190),
                        width: 150,
                        height: 25,
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 1, color: Colors.black54))),
                        child: const Column(
                          children: [
                            Text(
                              'یورو :  ۶۳',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'vazir'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        //
                      },
                      child: Container(
                        margin: const EdgeInsets.only(left: 190),
                        width: 150,
                        height: 25,
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 1, color: Colors.black54))),
                        child: const Column(
                          children: [
                            Text(
                              'افغانی :  ۱۷۹۰۹۸',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'vazir'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Spacer(),
                    const TabBillAccount(),
                    const SizedBox(
                      height: 25,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return const BillPages();
                            },
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(314, 43),
                        backgroundColor: const Color(0xff111111),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      child: const MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: Text(
                          'صورت حساب ',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'vazir',
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 65,
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
