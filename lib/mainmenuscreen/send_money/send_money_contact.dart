import 'package:flutter/material.dart';
import 'package:hematpay/mainmenuscreen/send_money/send_money_screen.dart';
import 'package:hematpay/mainmenuscreen/send_money/send_qrcode_transfer.dart';
import 'package:hematpay/widgets/invite_friends.dart';

class SendMoneyContact extends StatelessWidget {
  const SendMoneyContact({super.key});

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
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 110),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(248, 255, 255, 255),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 350, top: 3),
                    child: IconButton(
                      icon: const Icon(Icons.cancel_outlined),
                      iconSize: 35,
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return const SendMoneyScreen();
                            },
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 135, bottom: 18),
                    child: const Row(
                      children: [
                        Text(
                          'ارسال پول ',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'vazir'),
                        ),
                        Image(
                          width: 30,
                          image: AssetImage('assets/icon/up.png'),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const Text(
                    'شماره های زیر از دفتر تلفن شما عضو همت پی  ',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'vazir'),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const Text(
                    ' هستند .با انتخاب هر کدام می توانید مبلغ  ',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'vazir'),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const Text(
                    ' مورد نظر خود را بصورت آنی انتقال دهید ',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'vazir'),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Column(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          maximumSize: const Size(330, 45),
                          backgroundColor:
                              const Color.fromARGB(248, 255, 255, 255),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return const SendQRCodeTransfer();
                              },
                            ),
                          );
                        },
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.arrow_back_ios),
                            SizedBox(
                              width: 60,
                            ),
                            Text(
                              'حامد قوام',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'vazir'),
                            ),
                            SizedBox(
                              width: 80,
                            ),
                            Image(
                              width: 38,
                              image: AssetImage('assets/images/Ellipse3.png'),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return const InviteFriends();
                          },
                        ),
                      );
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
                        'دیگران را دعوت به عضویت کنید',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'vazir',
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 35,
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
