import 'package:flutter/material.dart';
import 'package:hematpay/mainmenuscreen/aipay/aipay_choice.dart';
import 'package:hematpay/widgets/card_balance.dart';

class AiPayReceipt extends StatefulWidget {
  const AiPayReceipt({super.key});

  @override
  State<AiPayReceipt> createState() => _ConfirmBankTransferState();
}

class _ConfirmBankTransferState extends State<AiPayReceipt> {
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
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 70),
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
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(top: 230),
              decoration: const BoxDecoration(
                color: Color.fromARGB(248, 253, 253, 253),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                ),
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
                              return const AiPayChoice();
                            },
                          ),
                        );
                      },
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 35.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          ' پرداخت هوشمند ',
                          style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'vazir'),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Image(
                          image: AssetImage('assets/icon/Plus.png'),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'پرداخت شما با موفقیت انجام شد ',
                    style: TextStyle(
                      color: Color.fromARGB(255, 148, 148, 148),
                      fontFamily: 'vazir',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Image(
                    width: 40,
                    image: AssetImage('assets/images/enerji.png'),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                    'سرویس برق کابل',
                    style: TextStyle(
                      fontFamily: 'vazir',
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'نام مشترک : حامد قوامی ',
                    style: TextStyle(
                      fontFamily: 'vazir',
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'شماره اشتراک : ۲۴۳۵۶۷۱',
                    style: TextStyle(
                      fontFamily: 'vazir',
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'مبلغ پرداخت شده : ۱۲و۶۷ دلار',
                    style: TextStyle(
                      fontFamily: 'vazir',
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'شماره پیگیری ۲۶۵۴۳۷۸۲',
                    style: TextStyle(
                      fontFamily: 'vazir',
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
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
                        '  اشتراک گذاری رسید با دیگران ',
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
                    height: 25,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
