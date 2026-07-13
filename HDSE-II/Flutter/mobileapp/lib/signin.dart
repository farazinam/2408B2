import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:mobileapp/Admin/index.dart';
import 'package:mobileapp/signup.dart'; //

class SignInUI extends StatelessWidget {
  const SignInUI({super.key});

  @override
  Widget build(BuildContext context) {

    final CollectionReference users = FirebaseFirestore.instance.collection("user");

    GlobalKey<FormState> _FKey =  GlobalKey<FormState>();  //

      final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

    Future<void> SignIn() async{
      final getEmail = email.text.trim();
      final getPassword = password.text.trim();

      final checkFormValidation = _FKey.currentState?.validate();

      if(checkFormValidation == true){
        try{
          final User? getUser = (await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: getEmail, 
            password: getPassword)).user;

            if(getUser != null){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return AdminHome();
              }));
            }
        }
        catch(e){
          print("Error : $e");
        }
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
        child: 
        Icon(Icons.login, size: 100,)
        //Image.asset("images/signup.png", fit: BoxFit.cover,) 
      
            ),

            SizedBox(height: 15,),

            Text("Login", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            SizedBox(height: 15,),
           

            TextFormField(
              controller: email,
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

            TextFormField(
              controller: password,
               autovalidateMode: AutovalidateMode.onUnfocus, //
              validator: MultiValidator(
                [
                  RequiredValidator(errorText: "Password is required"),
                  // EmailValidator(errorText: "Email should be valid")
                ]
              ).call,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.green
                  )
                ),
                label: Text("Password"),
                prefixIcon: Icon(Icons.email, color: Colors.green,)
                // hint: Text("Email") 
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return SignUpUI();
                  }));
                }, child: Text("Create A New Account")),
                TextButton(onPressed: (){}, child: Text("Forget Password")),
              ],
            ),

            SizedBox(height: 15,),

            ElevatedButton(onPressed: (){
              SignIn();
            }, child: Text("Sign In"))
            
          ],
        )),
      ),
      
    );
  }
}