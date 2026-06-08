import 'package:flutter/material.dart';
import 'package:mobileapp/call_log.dart';

class FormUI extends StatelessWidget {
  const FormUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.green[100],
        margin: EdgeInsets.only(left: 16, right: 16),
        child: Form(child: 
        Column(
          children: [
            Container(width: double.infinity,
            height: 200,
        child: Image.asset("images/signup.png", fit: BoxFit.cover,) 
            ),

            SizedBox(height: 15,),

            Text("Login", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            SizedBox(height: 15,),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.green
                  )
                ),
                label: Text("UserName"),
                prefixIcon: Icon(Icons.person, color: Colors.green,)
                // hint: Text("Email") 
              ),
            ),

            SizedBox(height: 15,),

            TextFormField(
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

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(onPressed: (){}, child: Text("Create A New Account")),
                TextButton(onPressed: (){}, child: Text("Forget Password")),
              ],
            ),

            SizedBox(height: 15,),

            ElevatedButton(onPressed: (){

              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
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