import 'package:flutter/material.dart';
import 'package:hematpay/screen/main_screen.dart';
import 'package:hematpay/user_account/user_panel/my_accounts/my_accounts.dart';
import 'package:hematpay/user_account/user_panel/my_accounts/open_account.dart';
import 'package:hematpay/widgets/card_balance.dart';

class MyAccountsPage extends StatefulWidget {
  const MyAccountsPage({super.key});

  @override
  State<MyAccountsPage> createState() => _MyAccountsPageState();
}

class _MyAccountsPageState extends State<MyAccountsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              margin: const EdgeInsets.only(top: 5),
              decoration: const BoxDecoration(
                color: Color(0xffF5F5F5),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 360, top: 20),
                    child: IconButton(
                      icon: Image.asset('assets/icon/back.png'),
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
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'وضعیت حساب ها',
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'vazir',
                          color: Colors.black38,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.wallet,
                        size: 35,
                        color: Colors.black38,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 55,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return const MyAccounts();
                          },
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(320, 40),
                      backgroundColor: const Color.fromARGB(254, 255, 255, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    child: const MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Row(
                        children: [
                          Icon(
                            Icons.arrow_circle_left,
                            size: 30,
                            color: Color.fromARGB(255, 199, 134, 55),
                          ),
                          Spacer(),
                          Text(
                            'حساب های من ',
                            style: TextStyle(
                              color: Color.fromARGB(255, 118, 118, 118),
                              fontFamily: 'vazir',
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return const OpenAccount();
                          },
                        ),
                      );
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
                      child: Row(
                        children: [
                          Icon(
                            Icons.arrow_circle_left,
                            size: 30,
                            color: Color.fromARGB(255, 199, 134, 55),
                          ),
                          Spacer(),
                          Text(
                            'افتتاح حساب',
                            style: TextStyle(
                              color: Color.fromARGB(255, 118, 118, 118),
                              fontFamily: 'vazir',
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 3,
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
