import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mobileapp/form.dart';

class Alerts extends StatelessWidget {
  const Alerts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alerts"),
      ),
      body: 
      //SnackBar
      Center(
        child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Amount transfered successfully"),
                  duration: Duration(seconds: 2),
                  backgroundColor: Colors.green,
                ),
              );
            },
            child: const Text("Show SnakeBar"),
          ),


          //BottomSheet
          ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context){
                  return SizedBox(
                    height: 150,
                    child: Center(child: Text("This is Bottom Sheet"),),
                  );
                });
            },
            child: const Text("Show Bottom Sheet"),
          ),


          //Toast
          ElevatedButton(
            onPressed: showToast, 
            child: Text("Toast Button"),
            ),

          
          //Alert
          // ElevatedButton(
          //   onPressed: () {
              AlertDialog(
                title: Text("Warning!"),
                content: Text("Are you sure you want to Delete this file?"),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return FormUI();
                          },
                        ),
                      );
                    },
                    child: Text("Cancel"),
                  ),
                  ElevatedButton(onPressed: () {}, child: Text("Delete")),
                ],
              ),
            // },
            // child: const Text("Show Alert"),
          // ),
        ],
      ),
      )
    );
  }
}


void showToast(){
  Fluttertoast.showToast(
    msg: "This is Flutter Toast",
    );
}
