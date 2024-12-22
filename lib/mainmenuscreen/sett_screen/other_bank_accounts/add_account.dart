import 'package:flutter/material.dart';
import 'package:hematpay/mainmenuscreen/sett_screen/other_bank_accounts/add_card_bank.dart';
import 'package:hematpay/mainmenuscreen/sett_screen/other_bank_accounts/change_information_card.dart';
import 'package:hematpay/mainmenuscreen/sett_screen/other_bank_accounts/transaction_card.dart';
import 'package:hematpay/screen/main_screen.dart';

class AddAccount extends StatefulWidget {
  const AddAccount({super.key});

  @override
  State<AddAccount> createState() => _AddAccountState();
}

class _AddAccountState extends State<AddAccount> {
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
                    margin: const EdgeInsets.only(right: 340, top: 5),
                    child: IconButton(
                      icon: const Icon(Icons.cancel_outlined),
                      iconSize: 35,
                      color: const Color.fromARGB(255, 170, 108, 67),
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
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'مدیریت بانک ها',
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
                    width: 380,
                    height: 90,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 239, 239, 239),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) {
                                  return const ChangeInformationCard();
                                },
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          child: const Text(
                            'ویرایش',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'vazir'),
                          ),
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'کارت بانک زراعت ',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'vazir'),
                            ),
                            Text(
                              '5022 4254 **** 23',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'vazir'),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 168, 168, 168)),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: const Image(
                              width: 38,
                              image: AssetImage('assets/icon/trash.png'),
                            ),
                          ),
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
                        icon: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(194, 65),
                          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1.0),
                          ),
                        ),
                        label: const Text(
                          'افزودن کارت جدید',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'vazir'),
                        ),
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      ElevatedButton.icon(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return const TransactionCard();
                              },
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(194, 65),
                          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1.0),
                          ),
                        ),
                        icon: const Icon(
                          Icons.access_time_rounded,
                          color: Colors.white,
                        ),
                        label: const Text(
                          'تراکنش کارت',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
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
