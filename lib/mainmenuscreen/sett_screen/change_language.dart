import 'package:flutter/material.dart';
import 'package:hematpay/screen/main_screen.dart';

class ChangeLanguage extends StatefulWidget {
  const ChangeLanguage({super.key});

  @override
  State<ChangeLanguage> createState() => _ConfirmBankTransferState();
}

class _ConfirmBankTransferState extends State<ChangeLanguage> {
  bool? isChecked = true;
  bool isPressed = true;
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
              Color.fromARGB(255, 17, 8, 0)
            ],
          ),
        ),
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 150),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(246, 253, 253, 253),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 300, top: 5),
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
                  const Padding(
                    padding: EdgeInsets.only(top: 35.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'تنظیمات',
                          style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'vazir'),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Image(
                          width: 30,
                          image: AssetImage('assets/icon/settings.png'),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'تغییر زبان برنامه',
                    style: TextStyle(
                        color: Color.fromARGB(255, 154, 154, 154),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'vazir'),
                  ),
                  const SizedBox(
                    height: 55,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isPressed = !isPressed;
                      });
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: (context) {
                      //       return const InviteFriends();
                      //     },
                      //   ),
                      // );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(314, 43),
                      backgroundColor: isPressed
                          ? const Color.fromARGB(255, 170, 108, 67)
                          : const Color.fromARGB(255, 187, 187, 187),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    child: const MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Text(
                        'فارسی',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'vazir',
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isPressed = !isPressed;
                      });
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: (context) {
                      //       return const InviteFriends();
                      //     },
                      //   ),
                      // );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(314, 43),
                      backgroundColor: isPressed
                          ? const Color.fromARGB(255, 170, 108, 67)
                          : const Color.fromARGB(255, 187, 187, 187),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    child: const MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Text(
                        'English',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'vazir',
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isPressed = !isPressed;
                      });
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: (context) {
                      //       return const InviteFriends();
                      //     },
                      //   ),
                      // );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(314, 43),
                      backgroundColor: isPressed
                          ? const Color.fromARGB(255, 170, 108, 67)
                          : const Color.fromARGB(255, 187, 187, 187),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    child: const MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Text(
                        'پښتو',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'vazir',
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isPressed = !isPressed;
                      });
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: (context) {
                      //       return const InviteFriends();
                      //     },
                      //   ),
                      // );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(314, 43),
                      backgroundColor: isPressed
                          ? const Color.fromARGB(255, 170, 108, 67)
                          : const Color.fromARGB(255, 187, 187, 187),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    child: const MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Text(
                        'عربی',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'vazir',
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
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
