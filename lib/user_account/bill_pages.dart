import 'package:flutter/material.dart';
import 'package:hematpay/user_account/bill_bank.dart';
import 'package:hematpay/widgets/card_balance.dart';

class BillPages extends StatefulWidget {
  const BillPages({super.key});

  @override
  State<BillPages> createState() => _BillPagesState();
}

class _BillPagesState extends State<BillPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              width: 35,
              height: 35,
              image: AssetImage('assets/images/Ellipse.png'),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
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
                                      return const BillBank();
                                    },
                                  ),
                                );
                              },
                            ),
                          ),
                          const Text(
                            'صورت حساب بانکی',
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
                    GestureDetector(
                      onTap: () {
                        //
                      },
                      child: Container(
                        width: 300,
                        height: 45,
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 1, color: Colors.black54))),
                        child: const Column(
                          children: [
                            Text(
                              '۱ - مبلغ ۷۸ دلار به حساب شما واریز شد ',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'vazir'),
                            ),
                            Text(
                              '2024/06/12',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'vazir'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    const Spacer(),
                    ElevatedButton(
                      onPressed: () {
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //     builder: (context) {
                        //       return const InviteFriends();
                        //     },
                        //   ),
                        // );
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
                      height: 45,
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
