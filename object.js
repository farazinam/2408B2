document.write("<h1>JavaScript Objects</h1> <br>");

// LITERAL SYNTAX 
document.write("<u> LITERAL SYNTAX </u> <br>");
var std1 = {
    fname: "Muhammad",
    lname: "Ali",
    age: 21,
    city: "Karachi",
    email: "ali@gmail.com",
    contact: 34567890
};


document.write(std1.fname + "<br>" + std1.lname + "<br>" + std1.age + "<br>" + std1.city + "<br>" + std1.email + "<br>" + std1.contact);

// document.write(std1.fname + "<br>");
// document.write(std1.lname + "<br>");
// document.write(std1.age + "<br>");
// document.write(std1.city + "<br>");
// document.write(std1.email + "<br>");
// document.write(std1.contact + "<br>");

document.write("<hr>");

// CONSTRUCTOR  
document.write("<u> CONSTRUCTOR </u> <br>");
var std2 = new Object();

std2.fname = "Muhammad";
std2.lname = "Ahmed";
std2.age = 22;
std2.city = "Lahore";
std2.email = "ahmed@gmail.com";
std2.address = "ABC123"
std2.contact = 34576751;

document.write(std2.fname + "<br>" + std2.lname + "<br>" + std2.age + "<br>" + std2.city + "<br>" + std2.email + "<br>" + std2.contact);




document.write("<hr>");
// FOR IN
document.write("<u> FOR IN LOOP </u> <br>");

for(var i in std2){
    document.write(i + ": "   + std2[i] + "<br>")
}


