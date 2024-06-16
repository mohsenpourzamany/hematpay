// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hematpay/mainmenu/aipay.dart';
import 'package:hematpay/mainmenu/bank_transfer.dart';
import 'package:hematpay/mainmenu/funds_box.dart';
import 'package:hematpay/mainmenu/money_bag.dart';
import 'package:hematpay/mainmenu/receive_money.dart';
import 'package:hematpay/mainmenu/send_money.dart';
import 'package:hematpay/mainmenu/trans_history.dart';
import 'package:hematpay/widgets/last_trans.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      width: 35,
                      height: 35,
                      image: AssetImage('assets/images/Ellipse.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 57),
                      child: Column(
                        children: [
                          Text(
                            'سلام حامد ',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w700),
                          ),
                          Text(
                            'به همت پی خوش آمدی',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w300),
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
                        horizontal: 20, vertical: 10),
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
