import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:postman_app/Screens/Home.dart';

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
          SizedBox(
            height: 120.0,
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Material(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset(
                  'assets/otp.png',
                  width: 100,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            child: Text(
              'OTP Verification',
              style: TextStyle(
                  fontFamily: 'CopperPlate Gothic',
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: Text('We have sent a Unique OTP to your'),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.only(left: 50, right: 50),
            child: OTPTextField(
              otpFieldStyle: OtpFieldStyle(enabledBorderColor: Colors.black),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '0:00',
                  style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 30,
                      color: Colors.black38,
                      fontWeight: FontWeight.w600),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Send Code Again',
                      style: TextStyle(
                          fontFamily: 'Arial',
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            margin: EdgeInsets.fromLTRB(60, 0, 60, 0),
            width: 200,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 214, 36, 13),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Center(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => const Home()),
                    ),
                  );
                },
                child: const Text(
                  'LOGIN',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Poppins'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
