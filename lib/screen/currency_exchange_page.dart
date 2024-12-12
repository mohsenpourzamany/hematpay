import 'package:flutter/material.dart';
import 'package:hematpay/screen/main_screen.dart';
import 'package:hematpay/widgets/card_balance.dart';
import 'package:hematpay/widgets/invite_friends.dart';

class CurrencyExchangePage extends StatefulWidget {
  const CurrencyExchangePage({super.key});

  @override
  State<CurrencyExchangePage> createState() => _CurrencyExchangePageState();
}

class _CurrencyExchangePageState extends State<CurrencyExchangePage> {
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
                margin: const EdgeInsets.only(top: 160),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(248, 255, 255, 255),
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
                          'تبدیل ارز',
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
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return const InviteFriends();
                        }));
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(314, 43),
                        backgroundColor: const Color(0xff111111),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      child: const MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: Text(
                          ' اشتراک گذاری رسید',
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
                      height: 15,
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
