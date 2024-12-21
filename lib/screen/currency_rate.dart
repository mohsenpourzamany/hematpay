import 'package:flutter/material.dart';
import 'package:hematpay/exchange/rate/derhamrate.dart';
import 'package:hematpay/exchange/rate/dollarrate.dart';
import 'package:hematpay/exchange/rate/eurorate.dart';
import 'package:hematpay/exchange/rate/lirarate.dart';
import 'package:hematpay/exchange/rate/pondrate.dart';
import 'package:hematpay/screen/main_screen.dart';

class CurrencyRate extends StatefulWidget {
  const CurrencyRate({super.key});

  @override
  State<CurrencyRate> createState() => _CurrencyRateState();
}

class _CurrencyRateState extends State<CurrencyRate> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Container(
          color: const Color.fromARGB(255, 170, 108, 67),
          child: Stack(children: [
            Container(
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
              child: Column(
                children: [
                  const Image(
                    width: 240,
                    image: AssetImage('assets/images/Logoo.png'),
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                            right: 350,
                          ),
                          child: IconButton(
                            icon: const Icon(Icons.cancel_outlined),
                            iconSize: 35,
                            color: Colors.brown,
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
                              'نرخ ارز',
                              style: TextStyle(
                                  fontSize: 21,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'vazir'),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        const Directionality(
                          textDirection: TextDirection.rtl,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    'نوع ارز',
                                    style: TextStyle(
                                        fontFamily: 'vazir',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    'خرید',
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontFamily: 'vazir',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    'فروش',
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontFamily: 'vazir',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const DollarRate(),
                        const SizedBox(
                          height: 7,
                        ),
                        const EuroRate(),
                        const SizedBox(
                          height: 7,
                        ),
                        const DerhamRate(),
                        const SizedBox(
                          height: 7,
                        ),
                        const LiraRate(),
                        const SizedBox(
                          height: 7,
                        ),
                        const PondRate(),
                        const SizedBox(
                          height: 45,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 80,
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
