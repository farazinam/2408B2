import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class ForgetPasswordUI extends StatelessWidget {
  const ForgetPasswordUI({super.key});

  @override
  Widget build(BuildContext context) {

    final CollectionReference users = FirebaseFirestore.instance.collection("user");

    GlobalKey<FormState> _FKey =  GlobalKey<FormState>();  //

    final TextEditingController forgetPassword = TextEditingController();

    Future<void> ForgetPassFn() async {
      var getEmail = forgetPassword.text.trim();
      try{
        FirebaseAuth.instance.sendPasswordResetEmail(email: getEmail).then((value)=>
        print("Email Sent!"));
        Navigator.pop(context);
      }
      on FirebaseAuthException catch(e){
        print("Error : $e");
      }
    }

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.green[100],
        padding: EdgeInsets.only(left: 16, right: 16),
        child: Form(
          key: _FKey, //
          child: 
        Column(
          children: [
            Container(width: double.infinity,
            height: 200,
        // child: Image.asset("images/signup.png", fit: BoxFit.cover,) 
            ),

            SizedBox(height: 15,),

            Text("Forget Password", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            SizedBox(height: 15,),

            TextFormField(
              controller: forgetPassword,
               autovalidateMode: AutovalidateMode.onUnfocus, //
              validator: MultiValidator(
                [
                  RequiredValidator(errorText: "Email is required"),
                  EmailValidator(errorText: "Email should be valid")
                ]
              ).call,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.green
                  )
                ),
                label: Text("Email"),
                prefixIcon: Icon(Icons.email, color: Colors.green,)
                // hint: Text("Email") 
              ),
            ),

            SizedBox(height: 15,),

            ElevatedButton(onPressed: (){
              ForgetPassFn();
            }, 
            
            child: Text("Forget Password"),
            )
          ],
        )),
      ),
      
    );
  }
}