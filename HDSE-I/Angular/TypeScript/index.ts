// Day 1 - TypeScript

// console.log("Hello world!");
// console.log("Hello world!");
// console.log("Batch 2408B2");
// console.log("Batch 2408B2");
// console.log("Batch 2408B2");
// document.write("Aptech Learning");
// document.write("Aptech Learning");
// document.write("Aptech Learning");

var naam:string = "Bilal";
// naam = 123;
console.log(naam);
console.log(naam);
console.log(naam);

var data: any = "Any Type Of Data";
data = 123;
console.log(data);


// Day 2 - TypeScript

var isEligible:boolean = true;

var anydata1:any = "Faraz";
var anydata2:any = 123;
var anydata3:any = 34.8;

//array
var arr1:string[] = ["1", "3", "5", "7", "9"];
var arr2:number[] = [1, 3, 5, 7, 9];
var arr3:Array<boolean> = [true, false];

//tuple
var tup1:[string, number, string, boolean] = ["Ali", 23, "Karachi", true];

//object
// var obj1 = {name: "Bilal", age :22};
var obj1:{name:string, age:number} = {name: "Bilal", age :22};

//Alias
type al1 = {brand:string, year:number};

var al2 : al1 = {brand: "Toyota", year: 2024}; 
console.log(al2);

//enum
enum Color {Red, Green, Blue};
let myColor : Color = Color.Blue;
console.log(myColor);

enum Size {Small = 1, Med, Large};
let mySize : Size = Size.Small;
console.log(mySize);

//function
function abc1(a:number, b:number){
    console.log(a+b);
}
abc1(1, 7);

function abc2(a:string, b:string):string{
   return a+b;
}

console.log(abc2("Faraz", " Inam"));
var output = abc2("Muhammad", " Imran");
console.log(output);





