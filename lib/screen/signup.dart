// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:hematpay/screen/send_code.dart';
import 'package:hematpay/screen/signin.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Login & Signup'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Login'),
              Tab(text: 'Signup'),
            ],
          ),
        ),
        body: Container(
          color: Colors.brown.shade600,
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(left: 120, top: 50),
                child: Image(
                  image: AssetImage('assets/images/credit3.png'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 120, top: 150),
                child: Image(
                  image: AssetImage('assets/images/credit2.png'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 200, top: 235),
                child: Image(
                  image: AssetImage('assets/images/credit1.png'),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black,
                      Colors.transparent,
                      Colors.black,
                    ],
                  ),
                ),
                child: TabBarView(
                  children: [
                    Column(
                      children: [
                        // Image(
                        //   width: 240,
                        //   image: AssetImage('assets/images/Logoo.png'),
                        // ),
                        Container(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(40))),
                          width: double.infinity,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              LoginCard(),
                              SignupCard(),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class LoginCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        margin: EdgeInsets.all(20.0),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: 'Email'),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Handle login logic here
                },
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SignupCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        margin: EdgeInsets.all(20.0),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: 'Full Name'),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(labelText: 'Email'),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Handle signup logic here
                },
                child: Text('Signup'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
