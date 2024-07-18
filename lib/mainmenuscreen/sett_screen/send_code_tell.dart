// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hematpay/screen/sucess_enter.dart';

class SendCodeTell extends StatelessWidget {
  const SendCodeTell({super.key});

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
        child: Container(
          color: Colors.brown.shade600,
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(left: 120, top: 50),
                child: Image(
                  image: AssetImage('assets/images/credit3.png'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 120, top: 150),
                child: Image(
                  image: AssetImage('assets/images/credit2.png'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 200, top: 235),
                child: Image(
                  image: AssetImage('assets/images/credit1.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Image(
                  width: 400,
                  image: AssetImage('assets/images/Logoo.png'),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black,
                      Colors.transparent,
                      Colors.black,
                    ],
                  ),
                ),
                child: Column(
                  children: [
                    // Image(
                    //   width: 240,
                    //   image: AssetImage('assets/images/Logoo.png'),
                    // ),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(212, 255, 255, 255),
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(40))),
                      width: double.infinity,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            textDirection: TextDirection.rtl,
                            'ورود کد ',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'vazir',
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            textDirection: TextDirection.rtl,
                            'لطفا کد ارسال شده به شماره موبایل',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'vazir',
                            ),
                          ),
                          Text(
                            textDirection: TextDirection.rtl,
                            '۰۰۹۰۵۵۲****۲۷۹۰ را وارد کنید ',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'vazir',
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 38),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 35),
                                  width: 55,
                                  height: 45,
                                  color: Color.fromARGB(70, 255, 255, 255),
                                  child: TextField(
                                    textAlign: TextAlign.center,
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 9),
                                  width: 55,
                                  height: 45,
                                  color: Color.fromARGB(70, 255, 255, 255),
                                  child: TextField(
                                    textAlign: TextAlign.center,
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 9),
                                  width: 55,
                                  height: 45,
                                  color: Color.fromARGB(70, 255, 255, 255),
                                  child: TextField(
                                    textAlign: TextAlign.center,
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 9),
                                  width: 55,
                                  height: 45,
                                  color: Color.fromARGB(70, 255, 255, 255),
                                  child: TextField(
                                    textAlign: TextAlign.center,
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 80),
                            child: Wrap(
                              children: [_getnumber()],
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(' ارسال دوباره کد '),
                          SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return SuccessEnter();
                              }));
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(314, 43),
                              backgroundColor: Color(0xff111111),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: Text(
                                ' تغییر شماره تلفن ',
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
                            height: 30,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _getnumber() {
    var listnumber = [
      '1',
      '2',
      '3',
      '4',
      '5',
      '6',
      '7',
      '8',
      '9',
      ' ',
      '0',
      ' <-'
    ];
    return Wrap(
      children: [
        for (var num in listnumber)
          Container(
            margin: EdgeInsets.symmetric(vertical: 7, horizontal: 7),
            alignment: Alignment.center,
            width: 50,
            height: 50,
            color: Color.fromARGB(20, 255, 255, 255),
            child: Text(
              num,
              style: TextStyle(fontSize: 20),
            ),
          ),
      ],
    );
  }
}
