import 'package:flutter/material.dart';
import 'package:hematpay/mainmenuscreen/sett_screen/send_code_tell.dart';
import 'package:hematpay/widgets/card_balance.dart';

class SuppurtContact extends StatefulWidget {
  const SuppurtContact({super.key});

  @override
  State<SuppurtContact> createState() => _ConfirmBankTransferState();
}

class _ConfirmBankTransferState extends State<SuppurtContact> {
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
              width: double.infinity,
              margin: const EdgeInsets.only(top: 70),
              decoration: const BoxDecoration(
                color: Color.fromARGB(210, 253, 253, 253),
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
                          'تنظیمات',
                          style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'vazir'),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Image(
                          width: 30,
                          image: AssetImage('assets/icon/settings.png'),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    '  تماس با پشتیبانی برنامه ',
                    style: TextStyle(
                        color: Color.fromARGB(255, 154, 154, 154),
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'vazir'),
                  ),
                  const SizedBox(
                    height: 55,
                  ),
                  const Text(
                    'شماره پشتیبانی ',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'vazir'),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'افغانستان :۰۰۹۳۷۶۵۸۹۴۶۳۷۲',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'vazir'),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const Text(
                    'ترکیه :        ۰۰۹۰۷۶۵۸۹۴۶۳۷۲',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'vazir'),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const Text(
                    'آلمان :       ۰۰۴۹۷۶۵۸۹۴۶۳۷۲',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'vazir'),
                  ),
                  const Spacer(),
                  Container(
                    width: 314,
                    height: 43,
                    color: Colors.transparent,
                    child: const TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintStyle: TextStyle(color: Color(0xffc1c1c1)),
                        labelText: 'عنوان پیام',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // ignore: sized_box_for_whitespace
                  Container(
                    width: 314,
                    child: TextFormField(
                      minLines: 5,
                      maxLines: null,
                      keyboardType: TextInputType.multiline,
                      decoration: const InputDecoration(
                        alignLabelWithHint: true,
                        border: OutlineInputBorder(),
                        labelText: ' متن پیام',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return const SendCodeTell();
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
                        'ارسال پیام',
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
          ],
        ),
      ),
    );
  }
}
