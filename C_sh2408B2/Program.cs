//static void Main()
//{

//----------------- Day 1 ----------------------------

using System.Diagnostics;
using System.Numerics;

Console.WriteLine("Hello, World!");

//var num1 = 5;
//var num2 = 10;

//Console.WriteLine(num1 + num2);

//double num3 = 12345;
//int num4 = "Ali"; NOT POSSIBLE

//string name1 = "Ali";
//string name2 = 12;  NOT POSSIBLE


////POSSIBLE
//bool isEligible;
//isEligible = false;

////NOT POSSIBLE
//var age;
//age = 22;

//int age = 22;

//Console.WriteLine($"My Name is {name1}");
//Console.WriteLine("My Name is " + name1 + "\n Age is " + age);
//Console.WriteLine("The value of Num1 and Num2 is {0}{1}{2}", num1, "\n", num2);


//var inp = Console.ReadLine();
//Console.WriteLine(inp);

//var toDay = DateTime.Now;
//Console.WriteLine(toDay);
//var month = toDay.ToString("M");
//Console.WriteLine(month);

//OPERATORS

//int n1 = 3;
//int n2 = 6;

//Arithmetic OPR (+, -, *, /, %)
//int output1 = n1 + n2;
//int output2 = n1 - n2;
//int output3 = n1 * n2;
//int output4 = n1 / n2;
//int output5 = n1 % n2;

//Console.WriteLine(output1 + "\n" + output2 + "\n" + output3 + "\n" + output4 + "\n" + output5 + "\n");


//Assignbment Opr (+=, -=, *=, /=, %=)
//n1 += n2;
//Console.WriteLine(n1);  //9
//Console.WriteLine(n2);  //6

//n1 -= n2;  // -3
//Console.WriteLine(n1);  //3
//Console.WriteLine(n2);  //6


//----------------- Day 2 ----------------------------


//Increment/Decrement Opr (++, --)
//int i1 = 3;
//int i2 = 6;

//Console.WriteLine(i1++); //post inc
//Console.WriteLine(i1);

//Console.WriteLine(++i1); //pre inc
//Console.WriteLine(i1);

//Console.WriteLine(i1--); //post dec
//Console.WriteLine(i1);

//Console.WriteLine(--i1); //pre dec
//Console.WriteLine(i1);


//comparision Opr (<, <=, >, >=, !=, ==, ===)
//int c1 = 30;
//int c2 = 30;


//Console.WriteLine(c1 > c2);
//Console.WriteLine(c1 >= c2);
//Console.WriteLine(c1 < c2);
//Console.WriteLine(c1 <= c2);
//Console.WriteLine(c1 == c2);
//Console.WriteLine(c1 != c2);


//Logical Opr (&&, ||, !)

//int l1 = 3;
//int l2 = 6;

//Console.WriteLine(l1 > 2 && l2 < 7);
//Console.WriteLine(l1 < 2 && l2 < 7);
//Console.WriteLine(l1 < 2 || l2 < 7);
//Console.WriteLine(l1 < 2 || l2 > 7);
//Console.WriteLine(l1 != 5 || l2 == 4);
//Console.WriteLine(l1 != 5 && l2 == 4);


//Conditional Opr (? :)

//int agee = 22;
//var output = (agee <= 30) ? "Younger" : "Older";
//Console.WriteLine(output);


//----------------- Day 3 ----------------------------

// --- Types of Statement

// Selection Statement

// --if
//int age = 17;
//bool cnic = true;
//string city = "Karachi";

//if (age >= 18)
//{
//    Console.WriteLine("You are Allowed");
//}

// --if else

//if ((age >= 18 || cnic == true) && city == "Karachi")
//    if (age >= 18 || (cnic == true && city == "Karachi"))
//    {
//        Console.WriteLine("You are Eligible");
//    }
//    else
//    {
//        Console.WriteLine("You are NOT Eligible");
//    }

// --if else (ladder)
//int per = 4;

//Console.WriteLine("Enter your Percentage");

//int per = int.Parse(Console.ReadLine());

//if (per <= 100 && per >= 80)
//{
//    Console.WriteLine("A+");
//}
//else if (per <= 79 && per >= 70)
//{
//    Console.WriteLine("A");
//}
//else if (per <= 69 && per >= 60)
//{
//    Console.WriteLine("B");
//}
//else if (per <= 59 && per >= 50)
//{
//    Console.WriteLine("C");
//}
//else if (per <= 49 && per >= 40)
//{
//    Console.WriteLine("D");
//}
//else
//{
//    Console.WriteLine("Fail");
//}


// --nested if

bool mainGate = true;
bool corridorGate = true;
bool labDoor = false;

//if (mainGate == true)
//{
//    Console.WriteLine("Assalam o Alaikum to Guard");
//    if (corridorGate == true)
//    {
//        Console.WriteLine("Assalam o Alaikum to Receptionist");
//        if (labDoor)
//        {
//            Console.WriteLine("Assalam o Alaikum Sir!");
//        }
//    }
//}

//if (mainGate == true)
//{
//    Console.WriteLine("Assalam o Alaikum to Guard");
//    if (corridorGate == true)
//    {
//        Console.WriteLine("Assalam o Alaikum to Receptionist");
//        if (labDoor)
//        {
//            Console.WriteLine("Assalam o Alaikum Sir!");
//        }
//        else
//        {
//            Console.WriteLine("Classroom Door is Closed");
//        }
//    }
//    else
//    {
//        Console.WriteLine("Corrodir Gate is Closed");
//    }
//}
//else
//{
//    Console.WriteLine("Main Gate is Closed");
//}

//// -- Switch Case
//string day = "Sunday";

//switch (day)
//{
//    case "Monday":
//    case "Wednesday": 
//    case "Friday":
//    Console.WriteLine("Class Today");
//    break; 
//    case "Tuesday":
//    case "Thursday":
//    case "Saturday":
//    Console.WriteLine("NO Class Today");
//    break;
//    case "Sunday":
//    Console.WriteLine("Holiday");
//    break;
//    default:
//    Console.WriteLine("Provide Valid Day");
//    break;
//}



//----------------- Day 4 ----------------------------

//Console.WriteLine("Please provide a Day");
//string day = Console.ReadLine();
//day = day.ToLower();
//switch (day)
//{
//    case "tuesday":
//    case "thursday":
//    case "saturday":
//        Console.WriteLine("No Class");
//        break;
//    case "sunday":
//        Console.WriteLine("Holiday");
//        break;
//    case "monday":
//    case "wednesday":
//    case "friday":
//        Console.WriteLine("selected Time");
//        string time = Console.ReadLine();
//        switch (time)
//        {
//            case "9-11":
//                Console.WriteLine("Its time to Enter in a Class");
//                break;
//            case "11-1":
//                Console.WriteLine("Class End");
//                break;
//            case "3-5":
//                Console.WriteLine("No Class Time");
//                break;
//            default:
//                Console.WriteLine("please Select Correct Time");
//                break;
//        }
//        break;
//    default:
//        Console.WriteLine("please Select Correct Day");
//        break;
//}


// ---- Loops (For, While, Do While)

//for (var a = 1; a <= 10; a++)
//{
//    Console.WriteLine(a);
//}

//Console.WriteLine("Odd Number");
//for (var a = 1; a <= 20; a= a+2)
//{
//    Console.WriteLine(a);
//}

//Console.WriteLine("Even Numbers");
//for (var a = 0; a <= 20; a = a + 2)
//{
//    Console.WriteLine(a);
//}

//Console.WriteLine("Odd Numbers Using Continue");
//for (var a = 0; a <= 20; a++)
//{
//    if (a%2 == 0)
//    {
//        continue;
//    }
//    Console.WriteLine(a);
//}

//Console.WriteLine("Table");
////var num = 9;
//int num = int.Parse(Console.ReadLine());

//for (var n = 1; n <=10; n++)
//{
//    Console.WriteLine(num + " X " + n + " = " + num*n);
//}

// Nested For
//for (var i = 1; i <= 10; i++)
//{
//    for (var j = 1; j<=10; j++)
//    {
//        Console.WriteLine(j + " Faraz Inam");
//    }
//}

//for (var i = 1; i <= 10; i++)
//{
//    for (var j = 1; j <= i; j++)
//    {
//        Console.Write("*");
//    }
//    Console.WriteLine();
//}
//for (var i = 10; i >= 1; i--)
//{
//    for (var j = 1; j <= i; j++)
//    {
//        Console.Write("*");
//    }
//    Console.WriteLine();
//}


//----------------- Day 5 ----------------------------

// -- while

//var w = 1;
//while (w < 10)
//{
//    if (w == 2)
//    {
//        break;
//    }
//    Console.WriteLine(w + " This is while loop");
//    w++;
//}

//var w2 = 1;
//while (w2 < 10)
//{
//    Console.WriteLine(w2 + " This is while loop");
//    if (w2 == 2)
//    {
//        break;
//    }
//    w2++;
//}

//var w3 = 1;
//while (w3 < 1)
//{
//    Console.WriteLine(w3 + " This is while loop");
//    w3++;
//}

//var dw = 1;
//do
//{
//    Console.WriteLine(dw + " This is do while loop");
//    dw++;
//}
//while (dw < 1);


// ---- Brak and exit and their differences

//Console.WriteLine("Welcome");
//var w2 = 1;
//while (w2 < 10)
//{
//    Console.WriteLine(w2 + " This is while loop");
//    if (w2 == 2)
//    {
//        break;
//    }
//    w2++;
//}
//Console.WriteLine("Good Bye");

//Console.WriteLine("------------------");

//Console.WriteLine("Welcome");
//var w3 = 1;
//while (w3 < 10)
//{
//    Console.WriteLine(w3 + " This is while loop");
//    if (w3 == 2)
//    {
//        Environment.Exit(0);
//    }
//    w3++;
//}
//Console.WriteLine("Good Bye");


// -- goto

//int number;

//start:
//Console.WriteLine("Enter A Positive Number");
//number = int.Parse(Console.ReadLine());

//if (number <= 0)
//{
//    Console.WriteLine(number + " Is not a Positive Number");
//    goto start;
//}

//Console.WriteLine("Your Positive Number is " + number);


//Run Program Until the user don't not want to close
string ask;
do
{
    // Sum of TWO integer values
    Console.WriteLine("Enter First Number?");
    int num1 = int.Parse(Console.ReadLine());

    Console.WriteLine("Enter Second Number?");
    int num2 = int.Parse(Console.ReadLine());

    int output = num1 + num2;

    Console.WriteLine("Addition of Two Numbers is " + output);  //concat
    Console.WriteLine("Do You Want to continue: Yes/No");
    ask = Console.ReadLine().ToLower();
}
while (ask == "yes");

Console.WriteLine("Program Exit");




