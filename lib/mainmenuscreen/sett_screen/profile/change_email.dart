import 'package:flutter/material.dart';
import 'package:hematpay/mainmenuscreen/sett_screen/send_code_tell.dart';
import 'package:hematpay/screen/main_screen.dart';

class ChangeEmail extends StatefulWidget {
  const ChangeEmail({super.key});

  @override
  State<ChangeEmail> createState() => _ChangeEmailState();
}

class _ChangeEmailState extends State<ChangeEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 170, 108, 67),
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
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 90),
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
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 16, 6, 1),
              Color.fromARGB(255, 46, 19, 2),
              Color.fromARGB(0, 65, 46, 40),
              Color.fromARGB(255, 17, 8, 0)
            ],
          ),
        ),
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 150),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(248, 253, 253, 253),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 300, top: 10),
                    child: IconButton(
                      icon: const Icon(Icons.cancel_outlined),
                      color: const Color.fromARGB(255, 170, 108, 67),
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
                    'تغییر ایمیل  ',
                    style: TextStyle(
                        color: Color.fromARGB(255, 154, 154, 154),
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'vazir'),
                  ),
                  const SizedBox(
                    height: 55,
                  ),
                  Container(
                    width: 314,
                    height: 43,
                    color: Colors.transparent,
                    child: const TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintStyle: TextStyle(color: Color(0xffc1c1c1)),
                        labelText: 'ایمیل جدید را وارد کنید',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 314,
                    height: 43,
                    color: Colors.transparent,
                    child: const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintStyle: TextStyle(color: Color(0xffc1c1c1)),
                        labelText: 'رمز ورود به سیستم را وارد کنید',
                      ),
                    ),
                  ),
                  const Spacer(),
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
                      minimumSize: const Size(220, 43),
                      backgroundColor: const Color.fromARGB(255, 170, 108, 67),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                    child: const MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Text(
                        'ارسال کد تایید',
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
