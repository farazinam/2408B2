import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart'; //
import 'package:mobileapp/call_log.dart';

class CreateCategory extends StatefulWidget {
   CreateCategory({super.key});


  @override
  State<CreateCategory> createState() => _CreateCategoryState();
}

class _CreateCategoryState extends State<CreateCategory> {

  final CollectionReference categories = FirebaseFirestore.instance.collection("category");

  final TextEditingController CategoryName = TextEditingController();

  Future<void> AddCategory() async {
    final catname = CategoryName.text.trim();

    await categories.add({
      "CategoryName" : catname
    });
  }

  @override
  Widget build(BuildContext context) {

    GlobalKey<FormState> _FKey =  GlobalKey<FormState>();  //

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.green[100],
        margin: EdgeInsets.only(left: 16, right: 16),
        child: Form(
          key: _FKey, //
          child: 
        Column(
          children: [
            Container(width: double.infinity,
            height: 200,
        child: Image.asset("images/category.png", fit: BoxFit.cover,) 
            ),

            SizedBox(height: 15,),

            Text("Add Category", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            SizedBox(height: 15,),
            TextFormField(
              controller: CategoryName,
              autovalidateMode: AutovalidateMode.onUnfocus, //
              validator: MultiValidator(
                [
                  RequiredValidator(errorText: "Category is required"),
                  PatternValidator(r'^[a-z]{3,}$', errorText: "Atleast 3 characters required")
                ]
              ).call,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.green
                  )
                ),
                label: Text("Category Name"),
                // hint: Text("Email") 
                prefixIcon: Icon(Icons.person, color: Colors.green,)
              ),
            ),

            SizedBox(height: 15,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(onPressed: (){}, child: Text("Add Category")),
                TextButton(onPressed: (){}, child: Text("View Category")),
              ],
            ),

            SizedBox(height: 15,),

            ElevatedButton(onPressed: AddCategory,  //calling function
            child: Text("Add Category"),
            )
          ],
        )),
      ),
      
    );
  }
}