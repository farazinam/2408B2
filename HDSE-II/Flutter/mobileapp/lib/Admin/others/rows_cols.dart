import 'package:flutter/material.dart';

class RowCols extends StatelessWidget {
  const RowCols({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body:
      SingleChildScrollView(
          child: 
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [ 
            Container(
              // margin: EdgeInsets.all(20),
              margin: EdgeInsets.only(top: 20, left: 20),
              // margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              padding: EdgeInsets.all(40),
              child: Text("This is Container 1", style: TextStyle(color: Colors.white),),
              color: Colors.blueAccent,
              width: 200,
              height: 100,
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.all(40),
              child: Text("This is Container 2", style: TextStyle(color: Colors.white),),
              color: Colors.orange,
              width: 200,
              height: 100,
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.all(40),
              child: Text("This is Container 3", style: TextStyle(color: Colors.white),),
              color: Colors.grey,
              width: 200,
              height: 100,
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.all(40),
              child: Text("This is Container 4", style: TextStyle(color: Colors.white),),
              color: Colors.purple,
              width: 200,
              height: 100,
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.all(40),
              child: Text("This is Container 5", style: TextStyle(color: Colors.white),),
              color: Colors.red,
              width: 200,
              height: 100,
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.all(40),
              child: Text("This is Container 6", style: TextStyle(color: Colors.white),),
              color: Colors.green,
              width: 200,
              height: 100,
            ),
          ],
        ),
        ),
    );
  }
}