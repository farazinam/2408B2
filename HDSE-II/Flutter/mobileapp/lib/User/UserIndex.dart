import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mobileapp/signin.dart';

class UserIndex extends StatefulWidget {
  const UserIndex({super.key});

  @override
  State<UserIndex> createState() => _UserIndexState();
}

class _UserIndexState extends State<UserIndex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
             FirebaseAuth.instance.signOut();
         Navigator.push(context, MaterialPageRoute(builder: (context){
          return SignInUI();
         }));
          }, 
          icon: Icon(Icons.logout, size: 50,),
          ),
          actions: [
            Icon(Icons.search, size: 50,)
          ],
      ),
      body: Column(
        children: [
          Column(
            children: [

              SizedBox(height: 20,),

              Text("Hello, Faraz Inam", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              Container(
                child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRM6Pu9-1qRVa_iqzgejaz6b0P84cb-GuzBqkn4nU16bQ&s=10"),
              ),

              SizedBox(height: 20,),
            ],
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.all(5)),
              Container(
                width: 180,
                height: 200,
                color: Colors.pink[100],
                child: Text("All Products",),
              ),
              Container(
                width: 180,
                height: 200,
                 color: Colors.blue[100],
                child: Text("All Categories"),
              )
            ],
          )
        ],
      )
    );
  }
}