import 'package:flutter/material.dart';
import 'package:hematpay/mainmenuscreen/send_money/confirm_transfer.dart';
import 'package:hematpay/widgets/card_balance.dart';

class SendQRCodeTransfer extends StatelessWidget {
  const SendQRCodeTransfer({super.key});

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
            Container(
              margin: const EdgeInsets.only(top: 160),
              decoration: const BoxDecoration(
                color: Color.fromARGB(248, 255, 255, 255),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    margin:
                        const EdgeInsets.only(left: 135, top: 40, bottom: 25),
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
                    height: 10,
                  ),
                  const Text(
                    ' مشخصات اکانت گیرنده',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'vazir'),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Image(
                    image: AssetImage('assets/images/Ellipse2.png'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'نام صاحب حساب : محسن پورزمانی ',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'vazir'),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const Text(
                    ' واحد پولی : دلار آمریکا',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'vazir'),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const Text(
                    'شماره حساب :135719780000',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'vazir'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'درصورت تایید مشخصات بالامبلغ موردنظر برای ',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'vazir'),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  const Text(
                    'انتقال را وارد کنید .در غیر این صورت پنجره را ببندید',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'vazir'),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 314,
                    height: 39,
                    color: Colors.white,
                    child: const TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'مبلغ مورد نظر جهت انتقال وارد کنید ',
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
                        return const ConfirmTransfer();
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
                        'انتقال بده',
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
                    height: 15,
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
