import UIKit

//MARK: - Collections

//Mark: - Array
let arrayOfStrings = ["asd", "b", "csd", "ssds", "a"] // By default, it is a String

print(arrayOfStrings[2])

let arrayOfCharacters: [Character] = ["a", "b", "c", "s", "a"] // Only Character type

var arrayOfIntegers: [Int] = [] // inager array - Empty
// var arrayOfIntegers = [Int]() // Also integer array - Empty

arrayOfIntegers = [1,2,3,4,5,6]
print("1:", arrayOfIntegers)
//change
arrayOfIntegers = [11,22,33,44,55,66]
print("2:", arrayOfIntegers)
//add
arrayOfIntegers += [0, 9]
print("3:", arrayOfIntegers)
//append to end
arrayOfIntegers.append(66)
print("4:", arrayOfIntegers)
//insert
arrayOfIntegers.insert(23, at: 2)
print("5:", arrayOfIntegers)
//Type
type(of: arrayOfIntegers)
// ADD ARRAYS TOGETHER
let someArrayOfInt = [97,98]
var intArr = arrayOfIntegers + someArrayOfInt
print(intArr)
// count elements in it
intArr.count

// replace index 3 element
intArr[3] = 11
print("intArray2: ", intArr)
//check if empty
print(intArr.isEmpty)
//clear array
//intArr.removeAll()

// use conditions // ! - not
if intArr.isEmpty{
    print("intArr is empty")
}else{
    print(intArr)
}
// remove specific index element
intArr.remove(at: 3)
print(intArr)

var newArrayOfString = ["me", "you"]
var oldArrayOfString = ["he", "she"]

var both = newArrayOfString + oldArrayOfString
print(both)

both += ["new"]
print(both)


//MARK: - Set

let setOfStrings: Set = ["a", "b", "c", "s", "a"]

print("setOfStrings: ", setOfStrings)
setOfStrings.contains("b")

setOfStrings.sorted(by: >)
print("setOfStrings > ", setOfStrings)

// empty set declaring
var setOfCharecters: Set<Character> = []

setOfCharecters = ["d"]
setOfCharecters.insert("r")
print(setOfCharecters)
setOfCharecters = []
print(setOfCharecters)

type(of: setOfCharecters)

//MARK: - Dictionaries
// String, String dict
var someStringDictionary = Dictionary<String, String>()
// String, Int dict
var moreStringIntDictionary = [String: Int]()
// String, String dict 2nd way
var stringDictionary = [String: String]()


stringDictionary = ["name" : "AM",
                    "age": "34",
                    "webLink": "1a.lv"
]
// adding key : values
print(stringDictionary)
stringDictionary["email"] = "a@a.com"
print("++++++++++++++++++")
stringDictionary["email1"]
stringDictionary["name"] = "Karlis"
print(stringDictionary)
// count
stringDictionary.count
// update
stringDictionary.updateValue("b@b.com", forKey: "email")
print(stringDictionary)

// remove
stringDictionary.removeValue(forKey: "email")
print(stringDictionary)
stringDictionary["age"] = nil
print(stringDictionary)


//Mark: - For loop
print("1 x 10 = \(1 * 10)")
print("1 x 10 = \(2 * 10)")
print("1 x 10 = \(3 * 10)")
print("1 x 10 = \(4 * 10)")
print("1 x 10 = \(5 * 10)")
print("1 x 10 = \(6 * 10)")
print("1 x 10 = \(7 * 10)")
print("1 x 10 = \(8 * 10)")
print("1 x 10 = \(9 * 10)")
print("1 x 10 = \(10 * 10)")

print("------------------")

// with loop
for i in 1...10{
    print("\(i) * 10 = \(i * 10)")
}
// null name variable _
for _ in 1...10{
    print("Hello")
}

// looping list
let apples = ["red apple", "red apple","red apple","green apple"]

type(of: apples)
var basket = 0
for apple in apples{
    if apple == "red apple"{
        basket += 1
    }
}

print("I have \(basket) red apples in my basket")

// dictionary loop
let numberOfLegs = [ "spider": 8,
                     "dog"   : 4,
                     "ant"   : 6 ]

for (animalName, legsCount) in numberOfLegs{
    print("\(animalName) has \(legsCount) legs")
}


let someText = "Swift"
for char in someText{
    print(char)
}

//MARK: - while loop

var count = 5
while count > 0 {
    print("Countdown: \(count)")
    count -= 1
}

var counter = 1
while true {
    print("Counter is now: \(counter)")
    counter += 1
    if counter == 20{
        break
    }
}

