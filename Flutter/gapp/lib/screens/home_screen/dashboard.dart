// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gapp/screens/login_screen/login.dart';
import 'package:gapp/screens/quick_alert_screen/alert_screen.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Flutter Tools',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
              child: Text('Login Screen'),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => Quick_Alert(),
                  ),
                );
              },
              child: Text('Quick Alert Screen'),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {},
              child: Text('Card page'),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {},
              child: Text('Profile page'),
            ),
          ],
        ),
      ),
    );
  }
}
