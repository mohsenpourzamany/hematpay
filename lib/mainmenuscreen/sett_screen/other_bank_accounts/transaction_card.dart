import 'package:flutter/material.dart';
import 'package:hematpay/mainmenuscreen/sett_screen/other_bank_accounts/add_card_bank.dart';
import 'package:hematpay/mainmenuscreen/sett_screen/setting_page.dart';

class TransactionCard extends StatefulWidget {
  const TransactionCard({super.key});

  @override
  State<TransactionCard> createState() => _TransactionCardState();
}

class _TransactionCardState extends State<TransactionCard> {
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
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 70),
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
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(248, 253, 253, 253),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 350, top: 5),
                    child: IconButton(
                      icon: const Icon(Icons.cancel_outlined),
                      iconSize: 35,
                      color: const Color.fromARGB(255, 170, 108, 67),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return const SettingPage();
                            },
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'فعالیت کارت',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'vazir'),
                        ),
                        const SizedBox(
                          width: 95,
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
                  const SizedBox(
                    height: 35,
                  ),
                  Container(
                    width: 380,
                    height: 60,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 239, 239, 239),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    // ignore: prefer_const_constructors
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Row(
                          children: [
                            Text(
                              '\u0024',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'vazir'),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              ('750'),
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'vazir'),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 180,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'شارژ کیف پولی',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'vazir'),
                            ),
                            Text(
                              '14:24:00   Mar 16s',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'vazir'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return const AddCardBank();
                              },
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(390, 65),
                          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1.0),
                          ),
                        ),
                        icon: const Icon(
                          Icons.download,
                          color: Colors.white,
                        ),
                        label: const Text(
                          'دانلود لیست تراکنش',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'vazir'),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
