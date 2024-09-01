import 'package:flutter/material.dart';
import 'package:hematpay/mainmenuscreen/send_money/send_money_account.dart';
import 'package:hematpay/mainmenuscreen/send_money/send_money_contact.dart';
import 'package:hematpay/mainmenuscreen/send_money/send_money_qrcode.dart';
import 'package:hematpay/screen/main_screen.dart';
import 'package:hematpay/widgets/card_balance.dart';

class SendMoneyScreen extends StatelessWidget {
  const SendMoneyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  margin: const EdgeInsets.only(top: 170),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(253, 253, 253, 253),
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
                                  return const MainScreen();
                                },
                              ),
                            );
                          },
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 135, bottom: 25),
                        child: const Row(
                          children: [
                            Text(
                              'ارسال پول ',
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'vazir'),
                            ),
                            Image(
                              width: 30,
                              image: AssetImage('assets/icon/up.png'),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'توجه کنید، مبلغ مورد نظر از کیف پول اصلی شما',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'vazir'),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      const Text(
                        'برداشت میشود',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'vazir'),
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return const SendMoneyQRcode();
                          }));
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(314, 43),
                          backgroundColor: const Color(0xffffffff),
                          side: const BorderSide(color: Colors.black, width: 2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        child: const MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: Text(
                            'ارسال پول از طریق اسکن کیوآرکد ',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'vazir',
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return const SendMoneyAccount();
                          }));
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(314, 43),
                          backgroundColor: const Color(0xffffffff),
                          side: const BorderSide(color: Colors.black, width: 2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        child: const MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: Text(
                            'ارسال پول از طریق شماره حساب ',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'vazir',
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return const SendMoneyContact();
                          }));
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
                            'ارسال پول از طریف دفترچه تلفن',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'vazir',
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const Text(
                        'با انتخاب اسم افرادی که در دفتر تلفن شماقرار',
                        style: TextStyle(
                          fontFamily: 'vazir',
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      const Text(
                        'دارند و عضو همت پی هستند به راحتی و بصورت',
                        style: TextStyle(
                          fontFamily: 'vazir',
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      const Text(
                        'آنی پول مورد نظر خود را انتقال دهید .',
                        style: TextStyle(
                          fontFamily: 'vazir',
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
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
      ),
    );
  }
}
