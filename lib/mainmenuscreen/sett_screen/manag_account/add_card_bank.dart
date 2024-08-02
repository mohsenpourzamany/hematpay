import 'package:flutter/material.dart';
import 'package:hematpay/mainmenuscreen/sett_screen/manag_account/add_account.dart';
import 'package:hematpay/screen/main_screen.dart';
import 'package:hematpay/widgets/card_balance.dart';

class AddCardBank extends StatefulWidget {
  const AddCardBank({super.key});

  @override
  State<AddCardBank> createState() => _AddCardBankState();
}

class _AddCardBankState extends State<AddCardBank> {
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
              margin: const EdgeInsets.only(top: 10),
              decoration: const BoxDecoration(
                color: Color.fromARGB(248, 253, 253, 253),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 350, top: 20),
                    child: IconButton(
                      icon: Image.asset('assets/icon/back.png'),
                      iconSize: 35,
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return const AddAccount();
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
                          'افزودن کارت جدید',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'vazir'),
                        ),
                        const SizedBox(
                          width: 85,
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
                    width: 290,
                    child: Divider(),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Container(
                    width: 360,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 239, 239, 239),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'عنوان کارت',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'vazir'),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Container(
                            width: 314,
                            height: 45,
                            color: Colors.transparent,
                            child: const TextField(
                              textAlign: TextAlign.center,
                              strutStyle:
                                  StrutStyle(fontFamily: 'vazir', fontSize: 16),
                              obscureText: false,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'عنوان کارت را وارد کنید',
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'شماره کارت',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'vazir'),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Container(
                            width: 314,
                            height: 45,
                            color: Colors.transparent,
                            child: const TextField(
                              textAlign: TextAlign.center,
                              strutStyle:
                                  StrutStyle(fontFamily: 'vazir', fontSize: 16),
                              obscureText: false,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'شماره کارت را وارد کنید',
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  const Text(
                                    'تاریخ انقضا',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'vazir'),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    width: 100,
                                    height: 45,
                                    color: Colors.transparent,
                                    child: const TextField(
                                      textAlign: TextAlign.center,
                                      strutStyle: StrutStyle(
                                          fontFamily: 'vazir', fontSize: 16),
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'تاریخ انقضا',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 112,
                              ),
                              Column(
                                children: [
                                  const Text(
                                    'CVV2',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'vazir'),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    width: 100,
                                    height: 45,
                                    color: Colors.transparent,
                                    child: const TextField(
                                      textAlign: TextAlign.center,
                                      strutStyle: StrutStyle(
                                          fontFamily: 'vazir', fontSize: 16),
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'CVV2',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'رمز کارت',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'vazir'),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Container(
                            width: 314,
                            height: 45,
                            color: Colors.transparent,
                            child: const TextField(
                              textAlign: TextAlign.center,
                              strutStyle:
                                  StrutStyle(fontFamily: 'vazir', fontSize: 16),
                              obscureText: false,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'رمز کارت را وارد کنید',
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 70,
                          ),
                          Row(
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) {
                                    return const MainScreen();
                                  }));
                                },
                                style: ElevatedButton.styleFrom(
                                  minimumSize: const Size(150, 45),
                                  backgroundColor: const Color(0xff898989),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                                child: const MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: Text(
                                    'انصراف ',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'vazir',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) {
                                    return const MainScreen();
                                  }));
                                },
                                style: ElevatedButton.styleFrom(
                                  minimumSize: const Size(150, 45),
                                  backgroundColor: const Color(0xff00890E),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                                child: const MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: Text(
                                    'اضافه کن ',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'vazir',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    ),
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
