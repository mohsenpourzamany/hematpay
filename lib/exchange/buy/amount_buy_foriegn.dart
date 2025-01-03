import 'package:flutter/material.dart';
import 'package:hematpay/exchange/buy/confirm_buy_foriegn.dart';
import 'package:hematpay/screen/main_screen.dart';

class AmountBuyForiegn extends StatefulWidget {
  const AmountBuyForiegn({super.key});

  @override
  State<AmountBuyForiegn> createState() => _AmountBuyForiegnState();
}

class _AmountBuyForiegnState extends State<AmountBuyForiegn> {
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
              Color.fromARGB(255, 17, 8, 0),
            ],
          ),
        ),
        child: Stack(
          children: [
            Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 390, top: 50),
                      child: IconButton(
                        icon: const Icon(Icons.cancel_outlined),
                        color: const Color.fromARGB(255, 255, 255, 255),
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
                    const Text(
                      'مبلغ خرید',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 21,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'vazir'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 35,
                ),
                Container(
                    width: 330,
                    decoration: const BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.all(
                        Radius.circular(7),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 25),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          const Text(
                            textAlign: TextAlign.center,
                            textDirection: TextDirection.rtl,
                            'مبلغ خرید ارز را وارد کرده و ثبت نمایید ',
                            style: TextStyle(
                                fontFamily: 'vazir',
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const SizedBox(
                            width: 70,
                            child: TextField(
                              style: TextStyle(
                                  fontFamily: 'vazir',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(
                            height: 75,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return const ConfirmBuyForiegn();
                              }));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 170, 108, 67),
                              minimumSize: const Size(150, 38),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            child: const MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: Text(
                                'تایید و ادامه',
                                style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontFamily: 'vazir',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
                const SizedBox(
                  height: 2,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
