import 'package:flutter/material.dart';
import 'package:hematpay/mainmenuscreen/aipay/aipay_choice.dart';
import 'package:hematpay/screen/main_screen.dart';
import 'package:hematpay/widgets/card_balance.dart';

class AiPayList extends StatefulWidget {
  const AiPayList({super.key});

  @override
  State<AiPayList> createState() => _AiPayListState();
}

class _AiPayListState extends State<AiPayList> {
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
              Color.fromARGB(255, 17, 8, 0),
            ],
          ),
        ),
        child: Stack(
          children: [
            const CardBalance(),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(
                  top: 280, right: 15, left: 15, bottom: 50),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(248, 253, 253, 253),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 350, top: 5),
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
                    padding: EdgeInsets.only(top: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'پرداخت هوشمند',
                          style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'vazir'),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Image(
                          image: AssetImage('assets/icon/Plus.png'),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    textDirection: TextDirection.rtl,
                    'سرویس مورد نظر خود را از لیست زیر انتخاب کنید.',
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'vazir'),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Wrap(
                    children: [
                      Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return const AiPayChoice();
                              }));
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(20, 80),
                              backgroundColor:
                                  const Color.fromARGB(255, 245, 245, 245),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                            child: const Image(
                              width: 50,
                              image: AssetImage('assets/images/wateraf.jpeg'),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'اداره آب ',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'vazir'),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return const AiPayChoice();
                              }));
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(20, 80),
                              backgroundColor:
                                  const Color.fromARGB(255, 245, 245, 245),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                            child: const Image(
                              width: 50,
                              image: AssetImage('assets/images/elecaf.jpg'),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'اداره برق ',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'vazir'),
                          )
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                    'کاربر عزیز شما میتوانید با استفاده ازسیستم ',
                    style: TextStyle(
                        color: Color(0xffc1c1c1),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'vazir'),
                  ),
                  const Text(
                    'پرداخت هوشمند کلیه صورت حساب های خود را ',
                    style: TextStyle(
                        color: Color(0xffc1c1c1),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'vazir'),
                  ),
                  const Text(
                    'بصورت آنلاین پرداخت نمایید .',
                    style: TextStyle(
                        color: Color(0xffc1c1c1),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'vazir'),
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
