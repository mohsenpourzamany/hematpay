// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              child: Image(
                width: double.infinity,
                image: AssetImage('assets/images/sbg.jpg'),
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      width: 35,
                      height: 35,
                      image: AssetImage('assets/images/Ellipse.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 57),
                      child: Column(
                        children: [
                          Text(
                            'سلام حامد ',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w700),
                          ),
                          Text(
                            'به همت پی خوش آمدی',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w300),
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
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(212, 255, 255, 255),
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(50)),
                  ),
                  child: Wrap(
                    children: [
                      // Column(
                      //   children: [
                      //     Container(
                      //       margin: EdgeInsets.symmetric(
                      //           horizontal: 7, vertical: 15),
                      //       decoration: BoxDecoration(
                      //         border: Border.all(
                      //           color: Color.fromARGB(255, 213, 213, 213),
                      //         ),
                      //         boxShadow: [
                      //           BoxShadow(
                      //               offset: Offset(0, 4),
                      //               color: Color.fromARGB(255, 117, 117, 117)
                      //                   .withOpacity(0.25),
                      //               spreadRadius: 4,
                      //               blurRadius: 50)
                      //         ],
                      //         borderRadius: BorderRadius.circular(50),
                      //       ),
                      //       child: Padding(
                      //         padding: const EdgeInsets.all(21.0),
                      //         child: ImageIcon(
                      //           AssetImage('assets/icon/Down.png'),
                      //         ),
                      //       ),
                      //     ),
                      //     SizedBox(
                      //       height: 8,
                      //     ),
                      //     Text(
                      //       'دریافت پول',
                      //       style: TextStyle(
                      //           fontSize: 15, fontWeight: FontWeight.w600),
                      //     ),
                      //   ],
                      // ),
                      // Column(
                      //   children: [
                      //     Container(
                      //       margin: EdgeInsets.symmetric(
                      //           horizontal: 7, vertical: 15),
                      //       decoration: BoxDecoration(
                      //         border: Border.all(
                      //           color: Color(0xffc4c4c4),
                      //         ),
                      //         boxShadow: [
                      //           BoxShadow(
                      //               offset: Offset(0, 4),
                      //               color: Color.fromARGB(255, 123, 123, 123)
                      //                   .withOpacity(0.25),
                      //               spreadRadius: 4,
                      //               blurRadius: 50)
                      //         ],
                      //         borderRadius: BorderRadius.circular(50),
                      //       ),
                      //       child: Padding(
                      //         padding: const EdgeInsets.all(21.0),
                      //         // child: _geticonmain(),
                      //         child: ImageIcon(
                      //           AssetImage('assets/icon/up.png'),
                      //         ),
                      //       ),
                      //     ),
                      //     SizedBox(
                      //       height: 8,
                      //     ),
                      //     // _gettextmain(),
                      //     Text(
                      //       'ارسال پول',
                      //       style: TextStyle(
                      //           fontSize: 15, fontWeight: FontWeight.w600),
                      //     ),
                      //   ],
                      // ),
                      _getlismain(),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _gettextmain() {
    var listtext = [
      'دریافت پول ',
      'ارسال پول',
      'انتقال بانکی',
      'کیف پول',
      'پرداخت هوشمند',
      'تاریخچه تراکنش ها',
      'بازار بورس و کریپتو',
      'تنظیمات',
    ];
    return Wrap(
      children: [
        for (var text in listtext)
          Text(
            text,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
          ),
      ],
    );
  }

  Widget _geticonmain() {
    final List<IconData> icons = [
      Icons.home,
      Icons.star,
      Icons.settings,
      Icons.phone,
      Icons.email,
      Icons.camera_alt,
      Icons.favorite,
    ];

    return Wrap(
      children: [for (var icon in icons) Icon(icon, size: 30)],
    );
  }

  Widget _getlismain() {
    var listtext = [
      'دریافت پول ',
      'ارسال پول',
      'انتقال بانکی',
      'کیف پول',
      'پرداخت هوشمند',
      'تاریخچه تراکنش ها',
      'بازار بورس و کریپتو',
      'تنظیمات',
    ];
    final List<IconData> icons = [
      Icons.home,
      Icons.star,
      Icons.settings,
      Icons.phone,
      Icons.email,
      Icons.camera_alt,
      Icons.favorite,
    ];
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 7, vertical: 15),
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xffc4c4c4),
            ),
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 4),
                  color: Color.fromARGB(255, 123, 123, 123).withOpacity(0.25),
                  spreadRadius: 4,
                  blurRadius: 50)
            ],
            borderRadius: BorderRadius.circular(50),
          ),
          child: Padding(
            padding: const EdgeInsets.all(21.0),
            // child: _geticonmain(),
            // child: ImageIcon(
            //   AssetImage('assets/icon/up.png'),
            // ),
            child: Wrap(
              children: [for (var icon in icons) Icon(icon, size: 30)],
            ),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        _gettextmain(),
        // Text(
        //   'ارسال پول',
        //   style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        // ),
      ],
    );
  }
}
