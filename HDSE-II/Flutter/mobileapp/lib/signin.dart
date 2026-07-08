import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:mobileapp/Admin/others/call_log.dart';
import 'package:mobileapp/signup.dart'; //

class SignInUI extends StatelessWidget {
  const SignInUI({super.key});

  @override
  Widget build(BuildContext context) {

    GlobalKey<FormState> _FKey =  GlobalKey<FormState>();  //

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

              Navigator.push(context, MaterialPageRoute(builder: (context){
                return CallLog();
              }));
            }, 
            
            child: Text("Sign In"),
            )
          ],
        )),
      ),
      
    );
  }
}