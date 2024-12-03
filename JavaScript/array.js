// var std = "faraz ali bilal haider";
// document.write(std);

// var b = 5;
// document.write(b);

// ARRAY 
//ONE DIMENTIONAL ARRAY 
//-----------
//LITETRAL SYNTAX METHOD
//-----------

// var a = ["Maaz", "Kamal", "Muntazir", "Ayan", "Abdul Rehman", "Alina", "Rameesha", "Salman", "Nad e Ali", "Mudassir", "kashan"];
// var b = [12, 45, 33, 78, 29]
// document.write(a.sort())
// document.write(a.join("_"))
// document.write(a.concat(b))
document.write("<br>");

// for(var i = 0; i<8; i++){
//     document.write(a[i]);
// }

// for(var i = 0; i<a.length; i++){
//     document.write(a[i]);
// }



// var std1 = ["Maaz", 18, "karachi", "Male", true, 6.8];
// var std2 = ["Ali", 18, "karachi", "Male", true, 6.8];
// document.write(std1);
// document.write("<br>");

// document.write([0]);
// document.write(a[1]);
// document.write(a[2]);
// document.write(a[3]);
// document.write(a[4]);
// document.write(a[5]);
// document.write(a[6]);
// document.write(a[7]);
// document.write(a[8]);

// a[8] = "Amir" 
// document.write(a[8]);
// document.write("<br>");

// var z = [];

// z[0] = "Ali";
// z[1] = "Bilal";
// z[3] = "Nasir";

// document.write(z[0]);
// document.write(z[1]);
// document.write(z[2]);
// document.write(z[3]);


//-----------
//CONSTRUCTOR METHOD
//-----------

// var x = new Array("Daniyal", 22, "lahore");
// document.write(x[0]);
// document.write(x[1]);
// document.write(x[2]);

// x[3] = 6.1;
// document.write(x[3]);

// x.push("Aptech"); // add element in last of an array
// document.write("<br>");

// document.write(x);

// x.pop(); // add element in last of an array
// document.write("<br>");

// document.write(x);


//MULTI DIMENTIONAL ARRAY 

var q = [

    [
    ["ali", "bilal", "usman"],
    [2, 7, 13],
    ["english", "computer", "math"],
    [
        ["A", "B","C"]
    ]

],
[
    [10, 20, 30],
    ["X", "Y", "Z"]
]
];

document.write(q[0][3][0][2]);



