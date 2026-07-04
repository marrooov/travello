import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset('assets/icons/logo.png'),
              SizedBox(height: 40),
               Text(
                  'Welcome Back!',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                 Text(
                  'sign in to access your account',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter your email',
                      suffixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter your password',
                      suffixIcon: Image.asset('assets/icons/eye.png'),
                      border: OutlineInputBorder(),
                    ),
                    obscureText: true,
                  ),
                ),
                Row(
                  children: [
                  Checkbox(
                    value: false,
                    onChanged: (value) {},
                  ),
                  Text('Remember me'),
                ],
                )
              ],
            ),
          ),  
      ),
    );
  }
}