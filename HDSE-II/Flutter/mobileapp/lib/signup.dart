import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:mobileapp/signin.dart';

class SignUpUI extends StatefulWidget {
  const SignUpUI({super.key});

  @override
  State<SignUpUI> createState() => _SignUpUIState();
}

class _SignUpUIState extends State<SignUpUI> {

  final CollectionReference users = FirebaseFirestore.instance.collection("user");

    GlobalKey<FormState> _FKey =  GlobalKey<FormState>();  

  final TextEditingController username = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirmPassword = TextEditingController();

  Future<void> CreateUser () async{
    var un = username.text.trim();
    var em = email.text.trim();
    var ps = password.text.trim();
    var cps = confirmPassword.text.trim();

    var testFormValidation = _FKey.currentState?.validate();

    if(testFormValidation == true){
      if(ps == cps){
        try{
          UserCredential userCred = await FirebaseAuth.instance.
          createUserWithEmailAndPassword(
            email: em, 
            password: ps);

            User? getUser =  userCred.user;

            if(getUser != null){
              await users.doc(getUser.uid).set(
                {
                  "UserName" : un,
                  "Email" : em,
                  "Password" : ps,
                  "Role" : "User",
                  // "CreatedAt" : DateTime.now()
                },

              );
                print("Account Created and User Added");

                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return SignInUI();
                }));
            }
        }
        catch(e){
          print("Error! $e");
        }
      }
    }
  }

  

  @override
  Widget build(BuildContext context) {


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

            Text("SignUp", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            SizedBox(height: 15,),
            TextFormField(
              controller: username,
              autovalidateMode: AutovalidateMode.onUnfocus, //
              validator: MultiValidator(
                [
                  RequiredValidator(errorText: "Username is required"),
                  PatternValidator(r'^[a-z]{3,}$', errorText: "Atleast 3 characters required")
                ]
              ).call,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.green
                  )
                ),
                label: Text("UserName"),
                // hint: Text("Email") 
                prefixIcon: Icon(Icons.person, color: Colors.green,)
              ),
            ),

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
                prefixIcon: Icon(Icons.password, color: Colors.green,)
                // hint: Text("Email") 
              ),
            ),

            SizedBox(height: 15,),

              TextFormField(
                controller: confirmPassword,
               autovalidateMode: AutovalidateMode.onUnfocus, //
              validator: MultiValidator(
                [
                  RequiredValidator(errorText: "Confirm Password is required"),
                  // EmailValidator(errorText: "Email should be valid")
                ]
              ).call,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.green
                  )
                ),
                label: Text("Confirm Password"),
                prefixIcon: Icon(Icons.password, color: Colors.green,)
                // hint: Text("Email") 
              ),
            ),

            SizedBox(height: 15,),

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Already have an Account? Sign In")),
                TextButton(onPressed: (){}, child: Text("Forget Password")),
              ],
            ),

            SizedBox(height: 15,),

           
            ElevatedButton(onPressed: (){
              CreateUser();
            }, child: Text("Sign Up"))
           
            
          ],
        )),
      ),
      
    );
  }
}