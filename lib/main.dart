// ignore_for_file: prefer_const_literals_to_create_immutables, unused_element, prefer_const_constructors

// ignore: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:hematpay/screen/forgot_password.dart';
import 'package:hematpay/screen/login.dart';
import 'package:hematpay/screen/signup.dart';
import 'package:hematpay/screen/signin.dart';

void main() {
  runApp(const myApp());
}

// ignore: camel_case_types
class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GetBodyWidget(),
      ),
    );
  }

  Widget _getBody(BuildContext context) {
    return SafeArea(
      child: GetBodyWidget(),
    );
  }
}

class GetBodyWidget extends StatelessWidget {
  const GetBodyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.brown.shade600,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            margin: EdgeInsets.only(left: 120, top: 1),
            child: Image(
              image: AssetImage('assets/images/credit3.png'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 120, top: 50),
            child: Image(
              image: AssetImage('assets/images/credit2.png'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 200, top: 305),
            child: Image(
              image: AssetImage(
                'assets/images/credit1.png',
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black,
                  Colors.black,
                  Colors.transparent,
                  Colors.black,
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: double.infinity,
                ),
                SizedBox(
                  height: 60,
                ),
                Image(
                  image: AssetImage('assets/images/Logo.png'),
                ),
                Spacer(),
                Text(
                  'با همت پی هر جا که باشید ',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'vazir',
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  ' ....پولتان همیشه همراه شماست ',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'vazir',
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return Signup();
                    }));
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(314, 43),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Text(
                      'ثبت نام کنید ',
                      style: TextStyle(
                        fontFamily: 'vazir',
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(314, 43),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    side: BorderSide(color: Colors.white, width: 2),
                  ),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return SignUpIn();
                    }));
                  },
                  child: Text(
                    ' ورود به برنامه',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'vazir',
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return ForgotPassword();
                    }));
                  },
                  child: Text(
                    'فراموشی رمز',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
