import 'package:flutter/material.dart';
import 'package:hematpay/exchange/sell/sell_forigen_list_account.dart';
import 'package:hematpay/user_account/user_panel/my_accounts/make_account.dart';

class CurrencyExchangePage extends StatelessWidget {
  const CurrencyExchangePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          title: const Text('خرید و فروش ارز'),
          bottom: const TabBar(
              indicatorColor: Colors.brown,
              labelColor: Colors.brown,
              labelStyle: TextStyle(
                fontSize: 19.0,
                fontFamily: 'vazir',
              ), //For Selected tab
              unselectedLabelStyle:
                  TextStyle(fontSize: 16.0, fontFamily: 'vazir'),
              tabs: [
                Tab(text: ' خرید'),
                Tab(
                  text: ' فروش',
                )
              ]),
        ),
        body: Container(
          color: const Color.fromARGB(255, 170, 108, 67),
          child: Stack(
            children: [
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
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: TabBarView(
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const SellForigenListAccount(),
                                    ));
                              },
                              child: const MakeAccount())
                        ],
                      ),
                      const Column(
                        children: [
                          MakeAccount(),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
