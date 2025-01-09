import 'package:flutter/material.dart';
import 'package:hematpay/manager_panel/transaction/confirm_cash_trans.dart';
import 'package:hematpay/screen/send_code.dart';
import 'package:hematpay/user_account/notification_user.dart';

class CashTransPage extends StatefulWidget {
  const CashTransPage({super.key});

  @override
  State<CashTransPage> createState() => _CashTransPageState();
}

class _CashTransPageState extends State<CashTransPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Image.asset('assets/images/Ellipse.png'),
                iconSize: 35,
                onPressed: () {
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //     builder: (context) {
                  //       return const UserAccount();
                  //     },
                  //   ),
                  // );
                },
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 55),
                child: Column(
                  children: [
                    Text(
                      'سلام حامد ',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'به همت پی خوش آمدی',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
              IconButton(
                icon: Image.asset('assets/images/notification-red.png'),
                iconSize: 35,
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const NotificationUser();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
          bottom: const TabBar(
            indicatorColor: Colors.brown,
            labelColor: Colors.brown,
            labelStyle: TextStyle(
              fontSize: 19.0,
              fontFamily: 'vazir',
            ), //For Selected tab
            unselectedLabelStyle: TextStyle(
                fontSize: 16.0, fontFamily: 'vazir'), //For Un-selected Tabs
            tabs: [
              Tab(
                text: 'واریز',
              ),
              Tab(text: ' برداشت'),
            ],
          ),
        ),
        body: Container(
          color: const Color.fromARGB(255, 170, 108, 67),
          child: Stack(children: [
            Container(
              margin: const EdgeInsets.only(left: 130, top: 50),
              child: const Image(
                image: AssetImage('assets/images/credit3.png'),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 135, top: 150),
              child: const Image(
                image: AssetImage('assets/images/credit2.png'),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 220, top: 235),
              child: const Image(
                image: AssetImage('assets/images/credit1.png'),
              ),
            ),
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
              child: const TabBarView(
                children: [
                  DepositCash(),
                  WithdrawalCash(),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

class DepositCash extends StatelessWidget {
  const DepositCash({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        margin: const EdgeInsets.all(30.0),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const SizedBox(
                height: 30,
              ),
              const Image(
                width: 100,
                image: AssetImage('assets/images/logodark.png'),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'سند واریز مبلغ نقدی',
                style: TextStyle(
                  color: Colors.black45,
                  fontFamily: 'vazir',
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const TextField(
                decoration: InputDecoration(labelText: 'شماره حساب'),
              ),
              const SizedBox(height: 10),
              const TextField(
                decoration: InputDecoration(labelText: 'مبلغ'),
                obscureText: true,
              ),
              const SizedBox(height: 60),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const ConfirmCashTrans();
                  }));
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(130, 38),
                  backgroundColor: Colors.brown,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text(
                  'تاییدیه مبلغ',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'vazir',
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WithdrawalCash extends StatelessWidget {
  const WithdrawalCash({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        margin: const EdgeInsets.all(30.0),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const SizedBox(
                height: 30,
              ),
              const Image(
                width: 100,
                image: AssetImage('assets/images/logodark.png'),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'سند برداشت مبلغ نقدی',
                style: TextStyle(
                  color: Colors.black45,
                  fontFamily: 'vazir',
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const TextField(
                decoration: InputDecoration(labelText: 'شماره حساب'),
              ),
              const SizedBox(height: 10),
              const TextField(
                decoration: InputDecoration(labelText: 'مبلغ'),
                obscureText: true,
              ),
              const SizedBox(height: 60),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const SendCode();
                  }));
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(130, 38),
                  backgroundColor: Colors.brown,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text(
                  'تاییدیه مبلغ',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'vazir',
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
