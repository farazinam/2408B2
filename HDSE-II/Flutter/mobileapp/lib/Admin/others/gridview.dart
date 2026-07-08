import 'package:flutter/material.dart';

class Grid extends StatelessWidget {
  const Grid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: 
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
        ),
    );
  }
}