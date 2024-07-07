// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hematpay/mainmenu/aipay.dart';
import 'package:hematpay/mainmenu/bank_transfer.dart';
import 'package:hematpay/mainmenu/funds_box.dart';
import 'package:hematpay/mainmenu/money_bag.dart';
import 'package:hematpay/mainmenu/receive_money.dart';
import 'package:hematpay/mainmenu/send_money.dart';
import 'package:hematpay/mainmenu/trans_history.dart';
import 'package:hematpay/widgets/card_balance.dart';
// import 'package:hematpay/widgets/botton_appbar.dart';
import 'package:hematpay/widgets/last_trans.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              width: 35,
              height: 35,
              image: AssetImage('assets/images/Ellipse.png'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 57),
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
            Image(
              width: 35,
              height: 35,
              image: AssetImage('assets/images/notification-red.png'),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: Container(
      //   decoration: BoxDecoration(
      //     borderRadius: BorderRadius.only(
      //       topLeft: Radius.circular(15),
      //       topRight: Radius.circular(15),
      //     ),
      //   ),
      //   child: ClipRRect(
      //     borderRadius: BorderRadius.only(
      //       topLeft: Radius.circular(15),
      //       topRight: Radius.circular(15),
      //     ),
      //     child: BottomNavigationBar(
      //       type: BottomNavigationBarType.fixed,
      //       backgroundColor: Color(0xff1C1F2E),
      //       // currentIndex: _selectedBottomNavigationItem,
      //       onTap: (int index) {
      //         // setState(() {
      //         //   _selectedBottomNavigationItem = index;
      //         // });
      //       },
      //       showSelectedLabels: false,
      //       showUnselectedLabels: false,
      //       items: [
      //         BottomNavigationBarItem(
      //           icon: Image.asset('images/icon_home.png'),
      //           activeIcon: Image.asset('images/icon_active_home.png'),
      //           label: 'Item1',
      //         ),
      //         BottomNavigationBarItem(
      //           icon: Image.asset('images/transfer.png'),
      //           activeIcon:
      //               Image.asset('images/icon_search_navigation_active.png'),
      //           label: 'Item2',
      //         ),
      //         BottomNavigationBarItem(
      //           icon: Image.asset('images/icon_add_navigation.png'),
      //           activeIcon:
      //               Image.asset('images/icon_add_navigation_active.png'),
      //           label: 'Item3',
      //         ),
      //         BottomNavigationBarItem(
      //           icon: Image.asset('images/icon_activity_navigation.png'),
      //           activeIcon:
      //               Image.asset('images/icon_activity_navigation_active.png'),
      //           label: 'Item4',
      //         ),
      //         BottomNavigationBarItem(
      //           icon: Container(
      //             width: 30,
      //             height: 30,
      //             decoration: BoxDecoration(
      //               border: Border.all(
      //                 width: 2,
      //                 color: Color(0xffC5C5C5),
      //               ),
      //               borderRadius: BorderRadius.all(
      //                 Radius.circular(8),
      //               ),
      //             ),
      //             child: ClipRRect(
      //               borderRadius: BorderRadius.all(Radius.circular(6)),
      //               child: FittedBox(
      //                 fit: BoxFit.cover,
      //                 child: Image.asset('images/profile.png'),
      //               ),
      //             ),
      //           ),
      //           activeIcon: Container(
      //             width: 30,
      //             height: 30,
      //             decoration: BoxDecoration(
      //               border: Border.all(
      //                 width: 2,
      //                 color: Color(0xffF35383),
      //               ),
      //               borderRadius: BorderRadius.all(
      //                 Radius.circular(8),
      //               ),
      //             ),
      //             child: ClipRRect(
      //               borderRadius: BorderRadius.all(Radius.circular(6)),
      //               child: FittedBox(
      //                 fit: BoxFit.cover,
      //                 child: Image.asset('images/profile.png'),
      //               ),
      //             ),
      //           ),
      //           label: 'Item4',
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              child: Image(
                width: double.infinity,
                image: AssetImage('assets/images/sbg.jpg'),
              ),
            ),
            Column(
              children: [
                CardBalance(),

                Spacer(),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(249, 254, 254, 254),
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(50)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Wrap(
                      children: [
                        ReceiveMoney(),
                        SendMoney(),
                        BankTransfer(),
                        MoneyBag(),
                        AIPay(),
                        TransHistory(),
                        FundsBox(),
                        LastTrans(),
                      ],
                    ),
                  ),
                ),
                // BottonAppBar(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
