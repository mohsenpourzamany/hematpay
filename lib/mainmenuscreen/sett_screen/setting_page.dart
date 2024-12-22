import 'package:flutter/material.dart';
import 'package:hematpay/mainmenuscreen/send_money/send_qrcode_transfer.dart';
import 'package:hematpay/mainmenuscreen/sett_screen/change_language.dart';
import 'package:hematpay/mainmenuscreen/sett_screen/change_pass.dart';
import 'package:hematpay/mainmenuscreen/sett_screen/change_tell.dart';
import 'package:hematpay/mainmenuscreen/sett_screen/other_bank_accounts/add_account.dart';
import 'package:hematpay/mainmenuscreen/sett_screen/suppurt_contact.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 170, 108, 67),
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
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
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
                          ' تنظیمات',
                          style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'vazir'),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Image(
                          width: 30,
                          image: AssetImage('assets/icon/settings.png'),
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
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.arrow_back_ios),
                          const Spacer(),
                          const Text(
                            'مدیریت بانک های دیگر ',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'vazir'),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 168, 168, 168)),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: const Image(
                              width: 38,
                              image: AssetImage('assets/icon/m-account.png'),
                            ),
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
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.arrow_back_ios),
                          const Spacer(),
                          const Text(
                            'تغییر رمز ورود',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'vazir'),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 168, 168, 168)),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: const Image(
                              width: 38,
                              image: AssetImage('assets/icon/Lock.png'),
                            ),
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
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.arrow_back_ios),
                          const Spacer(),
                          const Text(
                            'تغییر شماره تلفن',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'vazir'),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 168, 168, 168)),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: const Image(
                              width: 38,
                              image: AssetImage('assets/icon/Call.png'),
                            ),
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
                            return const ChangeLanguage();
                          },
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.arrow_back_ios),
                          const Spacer(),
                          const Text(
                            'تغییر زبان برنامه',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'vazir'),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 168, 168, 168)),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: const Image(
                              width: 38,
                              image: AssetImage('assets/icon/Document.png'),
                            ),
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
                            return const SuppurtContact();
                          },
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.arrow_back_ios),
                          const Spacer(),
                          const Text(
                            '  تماس با پشتیبانی',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'vazir'),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 168, 168, 168)),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: const Image(
                              width: 38,
                              image: AssetImage('assets/icon/Chat.png'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      maximumSize: const Size(314, 45),
                      backgroundColor: const Color.fromARGB(255, 255, 151, 47),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return const SendQRCodeTransfer();
                          },
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                              color: Color(0xffffffff), Icons.arrow_back_ios),
                          const Spacer(),
                          const Text(
                            'خروج از برنامه',
                            style: TextStyle(
                                color: Color(0xffffffff),
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'vazir'),
                          ),
                          const SizedBox(width: 8),
                          Container(
                            decoration: BoxDecoration(
                              color: const Color(0xffffffff),
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 168, 168, 168)),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: const Image(
                              width: 38,
                              image: AssetImage('assets/icon/Logout.png'),
                            ),
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
