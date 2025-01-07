import 'package:flutter/material.dart';
import 'package:hematpay/mainmenuscreen/send_money/send_qrcode_transfer.dart';
import 'package:hematpay/mainmenuscreen/sett_screen/change_language.dart';
import 'package:hematpay/mainmenuscreen/sett_screen/other_bank_accounts/add_account.dart';
import 'package:hematpay/mainmenuscreen/sett_screen/profile/person_profile.dart';
import 'package:hematpay/mainmenuscreen/sett_screen/suppurt_contact.dart';
import 'package:hematpay/manager_panel/manager_panel_main_page.dart';

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
                            return const PersonProfile();
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
                            'پروفایل',
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
                            'مدیریت بانکها',
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
                            Icons.account_balance_outlined,
                            color: Color(0xff111111),
                          )
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
                    child: const Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Spacer(),
                          Text(
                            'تغییر زبان برنامه',
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
                            Icons.language,
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
                            return const SuppurtContact();
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
                            ' تماس با پشتیبانی',
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
                            Icons.support_agent_outlined,
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
                            return const ManagerPanelMainPage();
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
                            'پنل مدیریتی',
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
                            Icons.manage_accounts_outlined,
                            color: Color(0xff111111),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      maximumSize: const Size(220, 45),
                      backgroundColor: const Color.fromARGB(255, 170, 108, 67),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
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
                    child: const Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'خروج از برنامه',
                            style: TextStyle(
                                color: Color(0xffffffff),
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'vazir'),
                          ),
                          SizedBox(width: 10),
                          Icon(
                            Icons.exit_to_app_outlined,
                            color: Color(0xffffffff),
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
