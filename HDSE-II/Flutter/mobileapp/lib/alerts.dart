import 'package:flutter/material.dart';
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
