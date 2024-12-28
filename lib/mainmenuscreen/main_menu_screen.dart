import 'package:flutter/material.dart';
import 'package:hematpay/mainmenu/aipay.dart';
import 'package:hematpay/mainmenu/bank_transfer.dart';
import 'package:hematpay/mainmenu/buy_ticket.dart';
import 'package:hematpay/mainmenu/funds_box.dart';
import 'package:hematpay/mainmenu/money_bag.dart';
import 'package:hematpay/mainmenu/receive_money.dart';
import 'package:hematpay/mainmenu/send_money.dart';
import 'package:hematpay/mainmenu/trans_history.dart';

class MainMenuScreen extends StatelessWidget {
  const MainMenuScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      children: [
        ReceiveMoney(),
        SendMoney(),
        BankTransfer(),
        MoneyBag(),
        AIPay(),
        TransHistory(),
        FundsBox(),
        BuyTicket(),
      ],
    );
  }
}
