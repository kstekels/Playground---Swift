//Mark: Lesson 1 - Variables and Constants

import UIKit

//Mark: -String / Variable "var"
var str = "Hello, playground"

//Mark: - String / Constant "let"
let string = "String Test"

// Variables you can reassign, constantes are imutable
str = "playground"

// Print to the console
print(str)
print(string)

#warning("Code is not compiling") //Warning message for me
/*
var capitalCity: String
capitalCity = "Riga"

//print("Capital City of Latvia: ☺️",capitalCity)
*/

//Mark: - String interpolation

var swift = "swift"
var name = "Karlis"
var year = 2014

print("\(name), Welcome to the \(swift) community. Together we are working to build a programming language to empower everyone to turn their ideas into apps on any platform. Announced in \(year), the \(swift) programming language has quickly become one of the fastest growing languages in history. \(swift) makes it easy to write software that is incredibly fast and safe by design. Our goals for Swift are ambitious: we want to make programming simple things easy, and difficult things possible. For students, learning \(swift) has been a great introduction to modern programming concepts and best practices. And because it is open, their Swift skills will be able to be applied to an even broader range of platforms, from mobile devices to the desktop to the cloud.")

var aboutSwift = """
Announced in 2014, the Swift programming language
has quickly become one of the fastest growing
languages in history. Swift makes it easy to write
software that is incredibly fast and safe by design.
Our goals for Swift are ambitious: we want to make
programming simple things easy, and difficult things
possible.

"""
print(aboutSwift)


let π = 3.14; print(π)

//Mark: - Types of data

let name1: String = "AM"
let age: Int = 34
let height: Double = 194.5
let weigth: Float = 95.4
let student: Bool = false

var myDouble: Double = 10.0
myDouble = 1234543453.9
myDouble = 1234543453.91
myDouble = 1234543453.912
myDouble = 1234543453.9221
myDouble = 1234543453.91112

var myFloat: Float = 10.0
myFloat = 123454.9
myFloat = 1234543453.91
myFloat = 1234543453.912
myFloat = 1234543453.9221
myFloat = 1234543453.91112


//Mark: - Tuples

let http404Error = (404,"Page not found")

let (statusCode, statusMessage) = http404Error

print("The status code is \(statusCode) and the satatus message is \(statusCode)")

//Mark:- Casting

let castIntToDouble = Double(age) + height
print(castIntToDouble)

let castDoubleToInt = age + Int(weigth)
print(castDoubleToInt)

let stringToNumber = "10"
let castStringToInt = age + Int(stringToNumber)!
print(castStringToInt)

//Mark: - Operators
//+ , - , * , /

var a = 10
a = a + 1
a = a - 1
a = a * 1
a = a / 1

var b = 20
b -= 5

// remainder

let e = 9
let f = 4
var g = e % f


// boolean

a == b
a != b
a >= b
a <= b


//Mark: - Comparison Operator

let word = "word"
if word == "word"{
    print("Hello word")
}else{
    print("I'm sorry")
}


// Mark: - Logic operators
let updateMessage = "Can't update Xcode!"
let update = "Updated!"

let latestXcode = false
let latestMacVersion = true

if !latestXcode && latestMacVersion {
    print("We can continue developing apps")
}else{
    print("We need update Xcode")
}

if latestXcode || latestMacVersion {
    print(updateMessage)
}else{
    print(update)
}
