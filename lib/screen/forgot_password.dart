import 'package:flutter/material.dart';
import 'package:hematpay/widgets/card_balance.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          children: [
            Text(
              'فراموشی رمز',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'vazir'),
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
              margin: const EdgeInsets.only(top: 1),
              decoration: const BoxDecoration(
                color: Color(0xffF5F5F5),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                ),
              ),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 200,
                      ),
                      Text(
                        'فراموشی رمز',
                        style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'vazir'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.password_outlined)
                    ],
                  ),
                  const SizedBox(
                    height: 75,
                  ),
                  Container(
                    width: 314,
                    height: 39,
                    color: Colors.white,
                    child: const TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'شماره موبایل خود را وارد کنید',
                      ),
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
                      //       return const CurrencyRate();
                      //     },
                      //   ),
                      // );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(320, 40),
                      backgroundColor: const Color.fromARGB(184, 255, 255, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    child: const MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Text(
                        'ارسال لینک تغییر رمز',
                        style: TextStyle(
                          color: Color.fromARGB(255, 118, 118, 118),
                          fontFamily: 'vazir',
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    'لینک ارسال شده به تلفن همراه خود را ',
                    style: TextStyle(
                      color: Color.fromARGB(255, 118, 118, 118),
                      fontFamily: 'vazir',
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Text(
                    'در اختیار افراد دیگر قرار ندهپد',
                    style: TextStyle(
                      color: Color.fromARGB(255, 118, 118, 118),
                      fontFamily: 'vazir',
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
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
