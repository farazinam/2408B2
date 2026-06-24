import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ReadCategory extends StatefulWidget {
  const ReadCategory({super.key});

  @override
  State<ReadCategory> createState() => _ReadCategoryState();
}

class _ReadCategoryState extends State<ReadCategory> {

  final CollectionReference categories = FirebaseFirestore.instance.collection('category');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cars"),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: StreamBuilder(
          stream: categories.snapshots(), 
          builder: (context, snapshot){
            if(snapshot.hasData){
              var catData = snapshot.data!.docs;
              return ListView.builder(
                itemCount: catData.length,
                itemBuilder: (context, index){
                  return ListTile(
                    title: Text(catData[index]['CategoryName']),
                    // subtitle: ,
                    trailing: Icon(Icons.delete, color: Colors.red,),
                  );
                });
            }
            else{
              return CircularProgressIndicator();
            }
          },
          )

      ),
    );
  }
}