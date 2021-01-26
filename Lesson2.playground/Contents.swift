import UIKit

// Mark: -if, else Conditional Statement

var myNumber = 10
if myNumber > 4{
    print("The condition is true")
}

if myNumber < 4 && myNumber < 0{
    print("The first condition is true")
}else if myNumber < 8{
    print("The second condition is true")
}else{
    print("The third condition is true")
}

var a = 1
var b = 1

if a < 4 && b < 4{
    print("The first-second condition is true")
}else if a == 10{
    print("The first-second condition is true")
}else{
    print("Nothing is true")
}

//Mark: - Switch case Conditional statement

let letter = "C"

switch letter {
case "a", "A":
    print("our letter is: \(letter)")
case "b", "B":
    print("our letter is: \(letter)")
case "c", "C":
    print("our letter is: \(letter)")
default:
    print("no idea")
}


let planetCount = 4
var countExpresion: String

switch planetCount {
case 0:
    countExpresion = "none"
case 1:
    countExpresion = "one"
case 1...4:
    countExpresion = "a few"
case 5...11:
    countExpresion = "several"
case 12...99:
    countExpresion = "dozens of"
default:
    countExpresion = "?????"
}

print("There are \(countExpresion) known planets!")


let color = "Red"
let number = 3

switch color {
case "Red" where number == 3:
    print("You have a red color")
case "Green" where number == 3:
    print("You have a green color")
case "Black" where number == 3:
    print("You have a black color")
default:
    break
}


//Mark: - Optionals *important

var someString = ""
var anotherStrng: String

//casting
var stringNumber = "123"
var convertToInt = Int(stringNumber)

//print(convertToInt) <- issue

// - issue
if convertToInt == nil {
    print("ConvertToInt does not contains any value")
}else{
    print("convertToInt:", convertToInt)
}
//

// right way
let optionalString: String? = "100" // ? optional

if let string = optionalString, let myInt = Int(string){
    print("Int: \(myInt)")
}
//
