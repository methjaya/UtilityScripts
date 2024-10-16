// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:gapp/screens/home_screen/dashboard.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Welcome Back!',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                Icons.account_circle,
                size: 300,
                color: Colors.grey,
              ),
              SizedBox(height: 32.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // Handle login logic
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: Colors.blue[800],
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  textStyle: TextStyle(fontSize: 16),
                  minimumSize: Size(400, 50),
                  
                ),
                child: Text('Login',style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),),
              ),
              TextButton(
                onPressed: () {
                  // Handle forgot password logic
                },
                child: Text('Forgot Password?'),
              ),
              SizedBox(height: 32.0),
              Text('Or login with'),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.facebook, color: Colors.blue),
                    iconSize: 40,
                    onPressed: () {
                      // Handle Facebook login
                    },
                  ),
                  SizedBox(width: 16.0),
                  IconButton(
                    icon: Icon(Icons.g_translate, color: Colors.red),
                    iconSize: 40,
                    onPressed: () {
                      // Handle Google login
                    },
                  ),
                  SizedBox(width: 16.0),
                  IconButton(
                    icon: Icon(Icons.apple, color: Colors.black),
                    iconSize: 40,
                    onPressed: () {
                      // Handle Apple login
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
