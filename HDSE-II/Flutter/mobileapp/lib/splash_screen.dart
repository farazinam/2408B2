import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobileapp/signin.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
  
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), (){
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return SignInUI();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.green,
        child: Center(
          child: Text("eCommerce", 
          style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}