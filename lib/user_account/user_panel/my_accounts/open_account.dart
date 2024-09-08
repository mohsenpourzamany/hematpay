import 'package:flutter/material.dart';
import 'package:hematpay/user_account/user_panel/my_accounts/my_accounts_page.dart';

class OpenAccount extends StatefulWidget {
  const OpenAccount({super.key});

  @override
  State<OpenAccount> createState() => _OpenAccountState();
}

class _OpenAccountState extends State<OpenAccount> {
  // void dropdownCallback(String? selectValue) {
  //   if (selectValue is String) {
  //     setState(() {
  //       _dropdownValue = selectValue;
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xffF5F5F5),
              ),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 360, top: 20),
                    child: IconButton(
                      icon: Image.asset('assets/icon/back.png'),
                      iconSize: 35,
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return const MyAccountsPage();
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
                        '  افتتاح حساب',
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'vazir',
                          color: Colors.black38,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.wallet,
                        size: 35,
                        color: Colors.black38,
                      )
                    ],
                  ),
                  const Divider(),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      Container(
                        width: 340,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 234, 234, 234),
                            borderRadius: BorderRadius.circular(8)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          child: DropdownButton<String>(
                            isExpanded: true,
                            hint: const Text(
                              'نوع حساب را انتخاب کنید ',
                              style: TextStyle(
                                  fontFamily: 'vazir',
                                  color: Color(0xffc1c1c1)),
                            ),
                            items: <String>['AF', 'US', 'EU', 'GP', 'TL']
                                .map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (_) {},
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 45,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Navigator.of(context)
                          //     .push(MaterialPageRoute(builder: (context) {
                          //   return Signup();
                          // }));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          minimumSize: const Size(314, 43),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        child: const MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: Text(
                            'افتتاح حساب',
                            style: TextStyle(
                              fontFamily: 'vazir',
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
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
