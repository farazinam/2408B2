import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  var user = {"name" : "Ali", "age": 22, "city" : "Karachi", "desig" : "Software Engineer"};
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("${user['name']}\'s Profile"),
          centerTitle: true,
          backgroundColor:Colors.black,
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: Column(
            children: [
              Text("User Deatils"),
              Image.asset("images/afridi.png",
              width: 200,
              height: 200,
              fit: BoxFit.cover,),
              Text("${user['age']}"),
              Text("${user['city']}"),
              Text("${user['desig']}"),
            ],
          ),
        ),
      ),
    );
  }
}