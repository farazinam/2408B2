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

        // Padding(
        //   padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        //   child: Center(
        //     child: ListView(
        //       children: [

        //         Container(
        //           width: 300,
        //           height: 300,
        //           color: Colors.blue[600],
        //           child: Icon(
        //             Icons.message,
        //             color: Colors.white,
        //             size: 100,
        //           ),
        //         ),
        //         Container(
        //           width: 300,
        //           height: 300,
        //           color: Colors.green[300],
        //           child: Icon(
        //             Icons.call,
        //             color: Colors.white,
        //             size: 100,
        //           ),
        //         ),
        //         Container(
        //           width: 300,
        //           height: 300,
        //           color: Colors.red[200],
        //           child: Icon(
        //             Icons.login,
        //             color: Colors.white,
        //             size: 100,
        //           ),
        //         ),
        //         Container(
        //           width: 300,
        //           height: 300,
        //           color: Colors.purple[200],
        //           child: Image.asset("images/afridi.jfif")
        //         ),
        //         Container(
        //           width: 800,
        //           height: 800,
        //           color: Colors.yellow[200],
        //           child: Image.network("data:image/jpeg;base64,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")
        //         ),

        //       ],
        //     ),
        //   ),
        //   )

        GridView.count(crossAxisCount: 3,
        padding: EdgeInsets.only(top: 10),
        crossAxisSpacing: 5,
        mainAxisSpacing: 20,
        children: [
          Container(
            color: Colors.red[200],
            child: Image.asset("images/afridi.png"),
          ),
          Container(
            color: Colors.green[200],
            child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHmHvbts_7VGLgkQqzAmhI7zLd1_QQZJ8j_w&s"),
          ),
          Container(
            color: Colors.blue[200],
          ),
          Container(
            color: Colors.black45,
          ),
          Container(
            color: Colors.purple[200],
          ),
        ],
        )
      ),
    )
  );
}