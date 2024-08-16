// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hematpay/screen/send_code.dart';
import 'package:hematpay/screen/signin.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('ثبت نام '),
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
                    Image(
                      width: 240,
                      image: AssetImage('assets/images/Logoo.png'),
                    ),
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
                            height: 50,
                          ),
                          Text(
                            'ایمیل',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'vazir'),
                          ),
                          Container(
                            width: 314,
                            height: 41,
                            color: Colors.white,
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'ایمیل خود را وارد کنید',
                                labelStyle: TextStyle(
                                    color: Color(0xffC8D1E1),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'vazir'),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'شماره موبایل ',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'vazir'),
                          ),
                          Container(
                            width: 314,
                            height: 41,
                            color: Colors.white,
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'شماره همراه خود را وارد کنید ',
                                labelStyle: TextStyle(
                                    color: Color(0xffC8D1E1),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'vazir'),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'رمز',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'vazir'),
                          ),
                          Container(
                            width: 314,
                            height: 41,
                            color: Colors.white,
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'رمز خود را وارد کنید ',
                                labelStyle: TextStyle(
                                    color: Color(0xffC8D1E1),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'vazir'),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 58,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return Signin();
                                  },
                                ),
                              );
                            },
                            child: Text(
                              'عضو هستید ؟ وارد شوید ',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'vazir'),
                            ),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return SendCode();
                                  },
                                ),
                              );
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
                                'عضو شوید ',
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
                            height: 50,
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
}
