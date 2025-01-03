import 'package:flutter/material.dart';
import 'package:hematpay/exchange/buy/amount_buy_foriegn.dart';
import 'package:hematpay/screen/main_screen.dart';
import 'package:hematpay/user_account/user_panel/my_accounts/make_account.dart';

class BuyForiegnListAccount extends StatefulWidget {
  const BuyForiegnListAccount({super.key});

  @override
  State<BuyForiegnListAccount> createState() => _BuyForiegnListAccountState();
}

class _BuyForiegnListAccountState extends State<BuyForiegnListAccount> {
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
                      margin: const EdgeInsets.only(right: 360, top: 50),
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
                      'لیست حسابها',
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
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AmountBuyForiegn(),
                          ));
                    },
                    child: const MakeAccount()),
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
