
import 'package:http/http.dart' as HTTP;
import 'dart:convert' as CONVERT;

void main(){
  print("Fetching API data in dart Project");
  final API = Uri.parse("https://68caa1ea430c4476c34a47f9.mockapi.io/students");

  HTTP.get(API).then((response){
    if(response.statusCode == 200){
      final data = CONVERT.jsonDecode(response.body);
      // print(data);
      List<dynamic> studentData = data;
      for(var records in studentData){
      print("Student ID: ${records["id"]}");
      print("Student Name: ${records["name"]}");
      print("Student Contact: ${records["Contact"]}");
      print("Student Image: ${records["image"]}");
      print("Create At: ${records["createdAt"]}");
      print("\n ________________________________________________ \n ");
      }
    }
  });
}