import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:postman_app/Screens/Login.dart';

class OTP extends StatefulWidget {
  const OTP({super.key});

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ListView(
        children: [
          Text(''),
          OTPTextField(),
          Row(
            children: [
              TextButton(onPressed: () {}, child: Text('')),
            ],
          ),
          TextButton(onPressed: () {}, child: Text('')),
        ],
      ),
    );
  }
}
