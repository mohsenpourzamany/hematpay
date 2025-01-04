import 'package:flutter/material.dart';
import 'package:hematpay/mainmenuscreen/sett_screen/profile/individual_profile/addressprofile.dart';
import 'package:hematpay/mainmenuscreen/sett_screen/profile/individual_profile/email_profile.dart';
import 'package:hematpay/mainmenuscreen/sett_screen/profile/individual_profile/family_profile.dart';
import 'package:hematpay/mainmenuscreen/sett_screen/profile/individual_profile/id_number_profile.dart';
import 'package:hematpay/mainmenuscreen/sett_screen/profile/individual_profile/mobile_profile.dart';
import 'package:hematpay/mainmenuscreen/sett_screen/profile/individual_profile/name_profile.dart';
import 'package:hematpay/mainmenuscreen/sett_screen/profile/individual_profile/photo_profile.dart';
import 'package:hematpay/mainmenuscreen/sett_screen/profile/individual_profile/username_profile.dart';
import 'package:hematpay/mainmenuscreen/sett_screen/profile/person_profile.dart';

class IndividualProfile extends StatefulWidget {
  const IndividualProfile({super.key});

  @override
  State<IndividualProfile> createState() => _IndividualProfileState();
}

class _IndividualProfileState extends State<IndividualProfile> {
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
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 80),
              decoration: BoxDecoration(
                  color: const Color(0xffF5F5F5),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 300, top: 10),
                    child: IconButton(
                      icon: const Icon(Icons.cancel_outlined),
                      color: const Color.fromARGB(255, 170, 108, 67),
                      iconSize: 35,
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return const PersonProfile();
                            },
                          ),
                        );
                      },
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [PhotoProfile()],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const NameProfile(),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 2),
                    child: Divider(),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const FamilyProfile(),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 2),
                    child: Divider(),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const UserNameProfile(),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 2),
                    child: Divider(),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const IdNumberProfile(),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 2),
                    child: Divider(),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const MobileProfile(),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 2),
                    child: Divider(),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const EmailProfile(),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 2),
                    child: Divider(),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const AddressProfile(),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 2),
                    child: Divider(),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Spacer(),
                  const Text(
                    'ورژن 1.01',
                    style: TextStyle(color: Color(0xff111111)),
                  ),
                  const SizedBox(
                    height: 10,
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
