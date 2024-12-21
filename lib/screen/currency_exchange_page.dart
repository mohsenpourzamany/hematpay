import 'package:flutter/material.dart';
import 'package:hematpay/screen/main_screen.dart';
import 'package:hematpay/widgets/invite_friends.dart';

class CurrencyExchangePage extends StatefulWidget {
  const CurrencyExchangePage({super.key});

  @override
  State<CurrencyExchangePage> createState() => _CurrencyExchangePageState();
}

class _CurrencyExchangePageState extends State<CurrencyExchangePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
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
              child: Column(
                children: [
                  const Image(
                    width: 240,
                    image: AssetImage('assets/images/Logoo.png'),
                  ),
                  Container(
                    margin:
                        const EdgeInsets.only(right: 25, left: 25, bottom: 30),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(248, 255, 255, 255),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                            right: 350,
                          ),
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
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'تبدیل ارز',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'vazir'),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 65,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color.fromARGB(255, 170, 108, 67)
                                      .withOpacity(
                                          0.5), // Shadow color with opacity
                                  spreadRadius: 3, // Spread value
                                  blurRadius: 10, // Blur value
                                  offset: const Offset(
                                      0, 0), // Offset (horizontal, vertical)
                                ),
                              ],
                            ),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return const InviteFriends();
                                }));
                              },
                              style: ElevatedButton.styleFrom(
                                minimumSize: const Size(280, 90),
                                backgroundColor:
                                    const Color.fromARGB(255, 251, 246, 246),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                              child: const MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.arrow_back_ios_new_rounded,
                                        color:
                                            Color.fromARGB(255, 170, 108, 67)),
                                    Text(
                                      'خرید ارز خارجی',
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 37, 37, 37),
                                        fontFamily: 'vazir',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color.fromARGB(255, 170, 108, 67)
                                      .withOpacity(
                                          0.5), // Shadow color with opacity
                                  spreadRadius: 3, // Spread value
                                  blurRadius: 10, // Blur value
                                  offset: const Offset(
                                      0, 0), // Offset (horizontal, vertical)
                                ),
                              ],
                            ),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return const InviteFriends();
                                }));
                              },
                              style: ElevatedButton.styleFrom(
                                minimumSize: const Size(280, 90),
                                backgroundColor:
                                    const Color.fromARGB(255, 251, 246, 246),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                              child: const MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.arrow_back_ios_new_rounded,
                                        color:
                                            Color.fromARGB(255, 170, 108, 67)),
                                    Text(
                                      'فروش ارز خارجی',
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 37, 37, 37),
                                        fontFamily: 'vazir',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 85,
                        ),
                      ],
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
