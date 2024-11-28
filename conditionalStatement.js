// CONTIONAL STATEMENT / DECISION MAKING STATEMENT 


// IF 
// var name = "Ali";

// if(name == "Ali"){
//     document.write("Done");
// }


// IF ELSE

// if(name == "Ali"){
//     document.write("Done");
// }
// else{
//     document.write("NOT Done");
// }

// IF ELSE IF
// var per = 82;

// if(per <= 100 && per >= 80){
//     document.write(" Your Grade is : A+");
// }
// else if(per <= 79 && per >= 70){
//     document.write(" Your Grade is : A");
// }
// else if(per <= 69 && per >= 60){
//     document.write(" Your Grade is : B");
// }
// else if(per <= 59 && per >= 50){
//     document.write(" Your Grade is : C");
// }
// else if(per <= 49 && per >= 40){
//     document.write(" Your Grade is : D");
// }
// else if(per <= 39 && per >= 0){
//     document.write(" Your Grade is : FAIL");
// }
// else{
//     document.write(" Please Prove a Valid Percentage");
// }


// NESTED IF 
// var num = 20;
// if(num> 10){
//     document.write("Number is Greater than 10 <br>");

//     if(num > 15){
//         document.write("Number is also Greater than 15 <br>");

//         if(num >20){
//             document.write("Number is also Greater than 20");
//         }
//         else{
//             document.write("But not Greater than 20");
//         }
//     }
//     else{
//         document.write("But Not Greater than 15")
//     }
// }
// else{
//     document.write("Number is not Greater than 10")
// }

// SWITCH 

// var fruit = prompt("Search Your Favourite Fruit Here!", "example Guava");
// fruit = fruit.toUpperCase();

// switch(fruit){
//     case "MANGO":
//         alert("Mangoes are 300 Rs per KG ");
//         break;

//     case "APPLE":
//         alert("Apples are 250 Rs per KG ");
//         break;

//     case "GRAPES":
//         alert("Grapes are 200 Rs per KG ");
//         break;

//     case "ORANGE":
//         alert("Oranges are 300 Rs per Dozen ");
//         break;

//     default:
//         alert("This Fruit is not Available right Now! ");
// }


// // BASIC CALCULATER WITH PROMPT

// var value1 = +prompt("Enter First Value");
// var value2 = +prompt("Enter Second Value");


var value1 = parseInt(prompt("Enter First Value"));
var opr = prompt("Enter any arithmetic opertor here");
var value2 = parseInt(prompt("Enter Second Value"));

if(opr == "+"){
    alert("The Sum of " + value1 + " AND " + value2 + " is: " + (value1 + value2));
}
else if(opr == "-"){
    alert("Subtraction is: " + (value1 - value2));
}
else if(opr == "*"){
    alert(value1 * value2);
}
else if(opr == "/"){
    alert(value1 / value2);
}
else if(opr == "%"){
    alert(value1 % value2);
}
else if(opr == "**"){
    alert(value1 ** value2);
}
else{
    alert("Either your operator is incorrect or Operand");
}









