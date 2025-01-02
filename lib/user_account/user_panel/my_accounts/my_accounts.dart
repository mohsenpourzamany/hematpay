import 'package:flutter/material.dart';
import 'package:hematpay/user_account/user_panel/my_accounts/make_account.dart';
import 'package:hematpay/user_account/user_panel/my_accounts/make_cart.dart';

class MyAccounts extends StatelessWidget {
  const MyAccounts({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          title: const Text('حساب ها ، کارت ها'),
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
                Tab(text: 'حساب ها'),
                Tab(
                  text: 'کارت ها',
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
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 25),
                  child: TabBarView(
                    children: [
                      Column(
                        children: [
                          MakeAccount(),
                        ],
                      ),
                      Column(
                        children: [
                          Makecard(),
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
