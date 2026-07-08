import 'package:flutter/material.dart';
import 'package:mobileapp/Admin/category/create.dart';

class Index extends StatelessWidget {
  const Index({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back)),
        title: Text("Welcome to Admin Panel"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: 
      Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 40, vertical: 30),
        child: Center(
          child: ListView(
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
                child: IconButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return CreateCategory();
                    }));
                  }, 
                  icon: Icon(Icons.category)),
              ),

               Container(
                height: 100,
                width: 100,
                color: Colors.orange,
                child: IconButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return CreateCategory();
                    }));
                  }, 
                  icon: Icon(Icons.mobile_friendly)),
              )
            ],
          ),
        ),)
    );
  }
}