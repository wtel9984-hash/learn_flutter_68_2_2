//  #step 2: Install Loading app screen
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'dart:async';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => FirstScreenState();
}

class FirstScreenState extends State<FirstScreen> {
  @override
  // อะไรที่อยากจะให้ทำงานตอนเริ่มต้น ให้ใส่ในนี้
  void initState() {
    super.initState();

    //เมื่อครบ 3 วิ ให้ไปหน้า secondscreen
    Timer(
      const Duration(seconds: 3),
      () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const SecondScreen()),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.purple, Colors.green],
          begin: FractionalOffset(0, 0),
          end: FractionalOffset(0.5, 0.6),
          tileMode: TileMode.mirror,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(child: Image.asset('./android/assets/image/app_screen.png')),
          const SizedBox(height: 20),
          const SpinKitSpinningLines(color: Colors.deepOrange),
        ],
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Screen')),
      body: Center(
        child: Text(
          "This is the second screen",
          style: const TextStyle(
            fontSize: 24,
            color: Colors.blue,
            fontWeight: FontWeight.w500,
            fontFamily: 'Alike',
          ),
        ),
      ),
    );
  }
}