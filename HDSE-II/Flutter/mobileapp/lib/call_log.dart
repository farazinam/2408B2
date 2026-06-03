import 'package:flutter/material.dart';

class CallLog extends StatelessWidget {
  const CallLog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: 
      ListView(
          children: [
            SizedBox(height: 5,),
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("images/afridi.png"),
              ),
              title: Text("Ali Ahmed"),
              subtitle: Text("missed call"),
              trailing: Icon(Icons.missed_video_call),
              tileColor: Colors.black12,
            ),
            SizedBox(height: 5,),
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("images/afridi.jfif"),
              ),
              title: Text("Muhammad Hamza"),
              subtitle: Text("missed call"),
              trailing: Icon(Icons.phone_callback),
              tileColor: Colors.black12,
            ),
          ],
        )
    );
  }
}