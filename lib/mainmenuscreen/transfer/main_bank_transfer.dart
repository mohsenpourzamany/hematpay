import 'package:flutter/material.dart';
import 'package:hematpay/mainmenuscreen/transfer/confirm_bank_transfer.dart';
import 'package:hematpay/screen/main_screen.dart';

class MainBankTransfer extends StatelessWidget {
  const MainBankTransfer({super.key});

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
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 70),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(248, 249, 249, 249),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 350, top: 5),
                    child: IconButton(
                      icon: const Icon(Icons.cancel_outlined),
                      color: const Color.fromARGB(255, 170, 108, 67),
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
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 25.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'انتقال بانکی',
                          style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'vazir'),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Image(
                          image: AssetImage('assets/icon/banktransfer.png'),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                    'مشخصات بانکی گیرنده را در باکس‌های زیر وارد کنید',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'vazir'),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Container(
                    width: 314,
                    height: 39,
                    color: Colors.transparent,
                    child: const TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'شماره ایبان گیرنده را وارد کنید ',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 314,
                    height: 39,
                    color: Colors.transparent,
                    child: const TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'نام و نام خانوادگی گیرنده را وارد کنید ',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 314,
                    height: 39,
                    color: Colors.transparent,
                    child: const TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'مبلغ انتقال را وارد کنید ',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 314,
                    height: 80,
                    color: Colors.transparent,
                    child: const TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'توضیحات و شرح انتقال را وارد کنید ',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const ConfirmBankTransfer();
                      }));
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(314, 43),
                      backgroundColor: const Color.fromARGB(255, 170, 108, 67),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    child: const MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Text(
                        'اعتبار سنجی گیرنده',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'vazir',
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'با زدن دکمه بالا مشخصات و جزییات حساب را',
                    style: TextStyle(
                        color: Color.fromARGB(255, 155, 155, 155),
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'vazir'),
                  ),
                  const Text(
                    'مشاهده میکنید . در صورت صحیح بودن میتوانید ',
                    style: TextStyle(
                        color: Color.fromARGB(255, 155, 155, 155),
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'vazir'),
                  ),
                  const Text(
                    'مبلغ مورد نظر را انتقال دهید',
                    style: TextStyle(
                        color: Color.fromARGB(255, 155, 155, 155),
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'vazir'),
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
