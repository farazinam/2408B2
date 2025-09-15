// Day 1 - TypeScript
// console.log("Hello world!");
// console.log("Hello world!");
// console.log("Batch 2408B2");
// console.log("Batch 2408B2");
// console.log("Batch 2408B2");
// document.write("Aptech Learning");
// document.write("Aptech Learning");
// document.write("Aptech Learning");
var naam = "Bilal";
// naam = 123;
console.log(naam);
console.log(naam);
console.log(naam);
var data = "Any Type Of Data";
data = 123;
console.log(data);
// Day 2 - TypeScript
var isEligible = true;
var anydata1 = "Faraz";
var anydata2 = 123;
var anydata3 = 34.8;
//array
var arr1 = ["1", "3", "5", "7", "9"];
var arr2 = [1, 3, 5, 7, 9];
var arr3 = [true, false];
//tuple
var tup1 = ["Ali", 23, "Karachi", true];
//object
// var obj1 = {name: "Bilal", age :22};
var obj1 = { name: "Bilal", age: 22 };
var al2 = { brand: "Toyota", year: 2024 };
console.log(al2);
//enum
var Color;
(function (Color) {
    Color[Color["Red"] = 0] = "Red";
    Color[Color["Green"] = 1] = "Green";
    Color[Color["Blue"] = 2] = "Blue";
})(Color || (Color = {}));
;
var myColor = Color.Blue;
console.log(myColor);
var Size;
(function (Size) {
    Size[Size["Small"] = 1] = "Small";
    Size[Size["Med"] = 2] = "Med";
    Size[Size["Large"] = 3] = "Large";
})(Size || (Size = {}));
;
var mySize = Size.Small;
console.log(mySize);
//function
function abc1(a, b) {
    console.log(a + b);
}
abc1(1, 7);
function abc2(a, b) {
    return a + b;
}
console.log(abc2("Faraz", " Inam"));
var output = abc2("Muhammad", " Imran");
console.log(output);
