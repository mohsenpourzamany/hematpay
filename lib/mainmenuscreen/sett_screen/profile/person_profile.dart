import 'package:flutter/material.dart';
import 'package:hematpay/mainmenuscreen/sett_screen/profile/change_email.dart';
import 'package:hematpay/mainmenuscreen/sett_screen/profile/change_pass.dart';
import 'package:hematpay/mainmenuscreen/sett_screen/profile/change_tell.dart';
import 'package:hematpay/mainmenuscreen/sett_screen/other_bank_accounts/add_account.dart';
import 'package:hematpay/screen/main_screen.dart';

class PersonProfile extends StatefulWidget {
  const PersonProfile({super.key});

  @override
  State<PersonProfile> createState() => _PersonProfileState();
}

class _PersonProfileState extends State<PersonProfile> {
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
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 130),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 350, top: 20),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          ' پروفایل',
                          style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'vazir'),
                        ),
                        Icon(
                          Icons.person,
                          size: 35,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      maximumSize: const Size(314, 45),
                      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return const AddAccount();
                          },
                        ),
                      );
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Spacer(),
                          Text(
                            'مشخصات فردی',
                            style: TextStyle(
                                color: Color(0xff111111),
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'vazir'),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.person,
                            color: Color(0xff111111),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      maximumSize: const Size(314, 45),
                      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return const ChangePass();
                          },
                        ),
                      );
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Spacer(),
                          Text(
                            'تغییر رمز ورود',
                            style: TextStyle(
                                color: Color(0xff111111),
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'vazir'),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.lock,
                            color: Color(0xff111111),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      maximumSize: const Size(314, 45),
                      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return const ChangeTell();
                          },
                        ),
                      );
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Spacer(),
                          Text(
                            'تغییر شماره تلفن',
                            style: TextStyle(
                                color: Color(0xff111111),
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'vazir'),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.phone,
                            color: Color(0xff111111),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      maximumSize: const Size(314, 45),
                      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return const ChangeEmail();
                          },
                        ),
                      );
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Spacer(),
                          Text(
                            'تغییر ایمیل',
                            style: TextStyle(
                                color: Color(0xff111111),
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'vazir'),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.email,
                            color: Color(0xff111111),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Spacer(),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      maximumSize: const Size(240, 45),
                      backgroundColor: const Color.fromARGB(255, 170, 108, 67),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return const MainScreen();
                          },
                        ),
                      );
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'برگشت به صفحه اصلی',
                            style: TextStyle(
                                color: Color(0xffffffff),
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'vazir'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
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
