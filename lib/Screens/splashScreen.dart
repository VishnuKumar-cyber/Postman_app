import 'dart:async';
import 'package:flutter/material.dart';
import 'package:postman_app/Screens/Login.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    super.initState();
  }

  /*Future<SplashPost?> fetchData() async {
    var request = http.Request('POST',
        Uri.parse('http://devapiv3.dealsdray.com/api/v2/user/device/add'));
    request.body =
        '''{\r\n    "deviceType": "andriod",\r\n    "deviceId": "C6179909526098",\r\n    "deviceName": "Samsung-MT200",\r\n    "deviceOSVersion": "2.3.6",\r\n    "deviceIPAddress": "11.433.445.66",\r\n    "lat": 9.9312,\r\n    "long": 76.2673,\r\n    "buyer_gcmid": "",\r\n    "buyer_pemid": "",\r\n    "app": {\r\n        "version": "1.20.5",\r\n        "installTimeStamp": "2022-02-10T12:33:30.696Z",\r\n        "uninstallTimeStamp": "2022-02-10T12:33:30.696Z",\r\n        "downloadTimeStamp": "2022-02-10T12:33:30.696Z"\r\n    }\r\n}''';

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    } else {
      print(response.reasonPhrase);
    }
  }*/

  @override
  Widget build(BuildContext context) {
    Timer(
        const Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const Login())));

    var assetsImage = const AssetImage(
        'assets/dealsarray.jpeg'); //<- Creates an object that fetches an image.
    var image = Image(image: assetsImage, height: 300);
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Center(
            child: image,
          ),
        ), //<- place where the image appears
      ),
    );
  }
}
