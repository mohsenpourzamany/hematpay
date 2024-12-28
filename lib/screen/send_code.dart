// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:hematpay/screen/sucess_enter.dart';

class SendCode extends StatefulWidget {
  const SendCode({super.key});

  @override
  State<SendCode> createState() => _SendCodeState();
}

class _SendCodeState extends State<SendCode> {
  bool _onEditing = true;
  // ignore: unused_field
  String? _code;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('کد تایید'),
      ),
      body: Container(
        color: Color.fromARGB(255, 170, 108, 67),
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(left: 120, top: 50),
              child: Image(
                image: AssetImage('assets/images/credit3.png'),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 145, top: 150),
              child: Image(
                image: AssetImage('assets/images/credit2.png'),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 220, top: 235),
              child: Image(
                image: AssetImage('assets/images/credit1.png'),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    const Color.fromARGB(255, 16, 6, 1),
                    Color.fromARGB(255, 46, 19, 2),
                    const Color.fromARGB(0, 65, 46, 40),
                    Color.fromARGB(255, 17, 8, 0)
                  ],
                ),
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 80),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(253, 255, 255, 255),
                        borderRadius: BorderRadius.circular(10)),
                    width: double.infinity,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Center(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 60,
                              ),
                              Image(
                                width: 100,
                                image: AssetImage('assets/images/logodark.png'),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                'کد تاییدی که به شماره زیر ارسال',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'vazir'),
                              ),
                              Text(
                                'شده است را وارد کنید',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'vazir'),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                '(0093771342654)',
                                style: TextStyle(
                                    color: Colors.brown,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'vazir'),
                              ),
                            ],
                          ),
                        ),
                        VerificationCode(
                          // textStyle: Theme.of(context)
                          //     .textTheme
                          //     .bodyLarge!
                          //     .copyWith(color: Theme.of(context).primaryColor),
                          keyboardType: TextInputType.number,
                          underlineColor: Colors.amber,
                          length: 5,
                          cursorColor: Colors.blue,
                          margin: const EdgeInsets.all(2),
                          onCompleted: (String value) {
                            setState(() {
                              _code = value;
                            });
                          },
                          onEditing: (bool value) {
                            setState(() {
                              _onEditing = value;
                            });
                            if (!_onEditing) {
                              FocusScope.of(context).unfocus();
                            }
                          },
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: const Text(
                            'کد را دوباره بفرست',
                            style: TextStyle(
                                fontFamily: 'vazir',
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.brown),
                          ),
                        ),
                        SizedBox(
                          height: 100,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return const SuccessEnter();
                            }));
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(320, 45),
                            backgroundColor: Colors.brown,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              side: const BorderSide(
                                  color: Color(0xffa8bdc6), width: 1),
                            ),
                          ),
                          child: const MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: Text(
                              'مرحله بعد',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'vazir',
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 80,
                        )
                      ],
                    ),
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
