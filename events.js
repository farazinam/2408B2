// function ac(){
//    a = +prompt("Enter a Number")
//    b = +prompt("Enter another Number")
//    alert(a+b)
// }

function ac(){
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
}

function gc(){
var per = prompt("Enter a Percentage!");

if(per <= 100 && per >= 80){
    alert(" Your Grade is : A+");
}
else if(per <= 79 && per >= 70){
    alert(" Your Grade is : A");
}
else if(per <= 69 && per >= 60){
    alert(" Your Grade is : B");
}
else if(per <= 59 && per >= 50){
    alert(" Your Grade is : C");
}
else if(per <= 49 && per >= 40){
    alert(" Your Grade is : D");
}
else if(per <= 39 && per >= 0){
    alert(" Your Grade is : FAIL");
}
else{
    alert(" Please Prove a Valid Percentage");
}
}
function eo(){
var a = prompt("Enter a Number")
if(a%2 == 0){
alert(a+ " is a Even Number");
}
else{
    alert(a+ " is a Odd Number");
}

}


console.log("Welcome");

