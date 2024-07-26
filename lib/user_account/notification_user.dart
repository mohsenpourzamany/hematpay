import 'package:flutter/material.dart';
import 'package:hematpay/widgets/card_balance.dart';

class NotificationUser extends StatelessWidget {
  const NotificationUser({super.key});

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
                margin: const EdgeInsets.only(top: 130),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(248, 253, 253, 253),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                  ),
                ),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 35.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '* اعلانات برنامه *',
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
