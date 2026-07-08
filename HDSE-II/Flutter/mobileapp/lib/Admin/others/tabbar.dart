import 'package:flutter/material.dart';

class TabBarUI extends StatelessWidget {
  const TabBarUI({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, 
      child: Scaffold(
        appBar: AppBar(
          title: Text("AppBar"),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.message),),
              Tab(icon: Icon(Icons.call),),
              Tab(icon: Icon(Icons.comment),),
            ]
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text("This is Message Page"),),
            Center(child: Text("This is Call Page"),),
            Center(child: Text("This is Comment Page"),),
          ]
          ),
      ));
  }
}