import 'package:flutter/material.dart';
import 'package:gapp/screens/home_screen/dashboard.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

class Quick_Alert extends StatefulWidget {
  const Quick_Alert({super.key});

  @override
  State<Quick_Alert> createState() => _Quick_AlertState();
}

class _Quick_AlertState extends State<Quick_Alert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Quick Alert',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => Dashboard(),
              ),
            );
          },
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                QuickAlert.show(
                  context: context,
                  title: 'Success',
                  type: QuickAlertType.success,
                );
              },
              child: Text('Success Alert'),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                QuickAlert.show(
                  context: context,
                  title: 'Info',
                  type: QuickAlertType.info,
                );
              },
              child: Text('Info Alert'),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                QuickAlert.show(
                  context: context,
                  title: 'Warning',
                  type: QuickAlertType.warning,
                );
              },
              child: Text('Warning Alert'),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                QuickAlert.show(
                  context: context,
                  title: 'Error',
                  type: QuickAlertType.error,
                );
              },
              child: Text('Error Alert'),
            ),
          ],
        ),
      ),
    );
  }
}