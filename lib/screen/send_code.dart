// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hematpay/screen/sucess_enter.dart';

class SendCode extends StatelessWidget {
  const SendCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(' ورود کد '),
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
                            'لطفا کد ارسال شده به شماره موبایل',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            '۰۰۹۰۵۵۲****۲۷۹۰ راوارد کنید ',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
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
                          Text('ارسال دوباره '),
                          SizedBox(
                            height: 5,
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
                                'تکمیل عضویت ',
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
              ))
      ],
    );
  }
}
