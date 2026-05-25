import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("AppBar"),
          centerTitle: true,
          backgroundColor: Colors.amber,
          actions: [
            IconButton(onPressed: (){
              print("You Clicked Button");
            }, 
            icon: Icon(Icons.message))
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Faraz Inam"), 
                accountEmail: Text("farazinam17@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  child: Text("FI"),
                ),
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Settings"),
                  subtitle: Text("Change your settings"),
                  trailing: Icon(Icons.arrow_forward),
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Settings"),
                  subtitle: Text("Change your settings"),
                  trailing: Icon(Icons.arrow_forward),
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Settings"),
                  subtitle: Text("Change your settings"),
                  trailing: Icon(Icons.arrow_forward),
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Settings"),
                  subtitle: Text("Change your settings"),
                  trailing: Icon(Icons.arrow_forward),
                ),
            ],
          ),
        ),
        body:
        // SingleChildScrollView(
        //   child: 
        //  Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   children: [ 
        //     Container(
        //       // margin: EdgeInsets.all(20),
        //       margin: EdgeInsets.only(top: 20, left: 20),
        //       // margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        //       padding: EdgeInsets.all(40),
        //       child: Text("This is Container 1", style: TextStyle(color: Colors.white),),
        //       color: Colors.blueAccent,
        //       width: 200,
        //       height: 100,
        //     ),
        //     Container(
        //       margin: EdgeInsets.only(top: 20),
        //       padding: EdgeInsets.all(40),
        //       child: Text("This is Container 2", style: TextStyle(color: Colors.white),),
        //       color: Colors.orange,
        //       width: 200,
        //       height: 100,
        //     ),
        //     Container(
        //       margin: EdgeInsets.only(top: 20),
        //       padding: EdgeInsets.all(40),
        //       child: Text("This is Container 3", style: TextStyle(color: Colors.white),),
        //       color: Colors.grey,
        //       width: 200,
        //       height: 100,
        //     ),
        //     Container(
        //       margin: EdgeInsets.only(top: 20),
        //       padding: EdgeInsets.all(40),
        //       child: Text("This is Container 4", style: TextStyle(color: Colors.white),),
        //       color: Colors.purple,
        //       width: 200,
        //       height: 100,
        //     ),
        //     Container(
        //       margin: EdgeInsets.only(top: 20),
        //       padding: EdgeInsets.all(40),
        //       child: Text("This is Container 5", style: TextStyle(color: Colors.white),),
        //       color: Colors.red,
        //       width: 200,
        //       height: 100,
        //     ),
        //     Container(
        //       margin: EdgeInsets.only(top: 20),
        //       padding: EdgeInsets.all(40),
        //       child: Text("This is Container 6", style: TextStyle(color: Colors.white),),
        //       color: Colors.green,
        //       width: 200,
        //       height: 100,
        //     ),
        //   ],
        // ),
        // ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Center(
            child: ListView(
              children: [

                Container(
                  width: 300,
                  height: 300,
                  color: Colors.blue[600],
                  child: Icon(
                    Icons.message,
                    color: Colors.white,
                    size: 100,
                  ),
                ),
                Container(
                  width: 300,
                  height: 300,
                  color: Colors.green[300],
                  child: Icon(
                    Icons.call,
                    color: Colors.white,
                    size: 100,
                  ),
                ),
                Container(
                  width: 300,
                  height: 300,
                  color: Colors.red[200],
                  child: Icon(
                    Icons.login,
                    color: Colors.white,
                    size: 100,
                  ),
                ),

              ],
            ),
          ),
          )
      ),
    )
  );
}