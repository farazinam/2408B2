import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Watch"),
          centerTitle: true,
          backgroundColor: Colors.amber,
          leading: Icon(Icons.menu),
          actions: [
            IconButton(onPressed: (){
              print("You Clicked Button");
            }, icon: Icon(Icons.login))
          ],
        ),
        body: Column(
          children: [
            Container(
              child: Text("This is s body"),
              color: Colors.blueAccent,
              width: 200,
            )
          ],
        ),
      ),
    )
  );
}