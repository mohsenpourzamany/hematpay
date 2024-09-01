import 'package:flutter/material.dart';
import 'package:hematpay/user_account/user_panel/user_account.dart';
import 'package:hematpay/widgets/card_balance.dart';

class CurrencyRate extends StatefulWidget {
  const CurrencyRate({super.key});

  @override
  State<CurrencyRate> createState() => _CurrencyRateState();
}

class _CurrencyRateState extends State<CurrencyRate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
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
                                return const UserAccount();
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
                        SizedBox(
                          width: 7,
                        ),
                        Icon(
                          Icons.currency_exchange,
                          size: 30.0,
                          semanticLabel:
                              'Text to announce in accessibility modes',
                        ),
                      ],
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      'نرخ دلار هرات',
                      style: TextStyle(
                          fontFamily: 'vazir',
                          fontSize: 22,
                          fontWeight: FontWeight.w600),
                    ),
                    const Directionality(
                      textDirection: TextDirection.rtl,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Text(
                                'خرید',
                                style: TextStyle(
                                    fontFamily: 'vazir',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                'فروش',
                                style: TextStyle(
                                    fontFamily: 'vazir',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 180,
                          ),
                          Column(
                            children: [
                              Text(
                                '70.3',
                                style: TextStyle(
                                    fontFamily: 'vazir',
                                    fontSize: 20,
                                    color: Colors.red,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                '71.3',
                                style: TextStyle(
                                    fontFamily: 'vazir',
                                    fontSize: 20,
                                    color: Colors.green,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      'نرخ دلار استانبول',
                      style: TextStyle(
                          fontFamily: 'vazir',
                          fontSize: 22,
                          fontWeight: FontWeight.w600),
                    ),
                    const Directionality(
                      textDirection: TextDirection.rtl,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Text(
                                'خرید',
                                style: TextStyle(
                                    fontFamily: 'vazir',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                'فروش',
                                style: TextStyle(
                                    fontFamily: 'vazir',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 180,
                          ),
                          Column(
                            children: [
                              Text(
                                '32.8',
                                style: TextStyle(
                                    fontFamily: 'vazir',
                                    fontSize: 20,
                                    color: Colors.red,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                '33.3',
                                style: TextStyle(
                                    fontFamily: 'vazir',
                                    fontSize: 20,
                                    color: Colors.green,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 400,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
