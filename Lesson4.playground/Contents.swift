import UIKit

//Mark: - Function()

func addingTwoNumbers(){
    let a = 4
    let b = 5
    let c = a + b
    print("c: ", c)
}

addingTwoNumbers()

func addingNumbers() -> Int {
    let a = 4
    let b = 55
    return a + b
}

addingNumbers()


// Func with parameters
// func name            arg1             arg2            return: Int
func addingTwoNumbers(numberOne a: Int, numberTwo b: Int) -> Int{
    return a + b
}

addingTwoNumbers(numberOne: 2, numberTwo: 3)

func multiplyNumb(a: Int, b: Int) -> Int{
    return a * b
}

multiplyNumb(a: 5, b: 4)

// no name arguments
func multiplyNumb(_ numOne: Int, _ numTwo: Int) -> Int{
    return numOne * numTwo
}

multiplyNumb(12, 4)

//
func multiplyNumb(_ numOne: Int, multiply numbTwo: Int) -> Int{
    return numOne * numbTwo
}

multiplyNumb(3, multiply: 3)
//
// More then 2 parameters like *args in python
func average(_ numbers: Double...) -> Double{
    var total = 0.0
    
    for number in numbers{
        total += number
    }
    
    return total / Double(numbers.count)
}
average(4,4,4,4,2,2,2,2)

//------------

let someValue = 5

let arrayOfNumbers = [4,6,8,9,3,2,1]

func filterNumLessThenValue(value: Int, numbers: [Int]) -> [Int]{
    var filteredNumbers: [Int] = []
    
    for number in numbers{
        if number < value {
            filteredNumbers.append(number)
        }
    }
    
    return filteredNumbers
}

filterNumLessThenValue(value: someValue, numbers: arrayOfNumbers)


//
func calculateDateValue(from day: Int, _ month: Int, _ year: Int){
    let currentDate = Date()
    
    var dateComponents = DateComponents()
    dateComponents.day = day
    dateComponents.month = month
    dateComponents.year = year
    
    let userCalendar = Calendar.current
    
    if let calculateDate = userCalendar.date(from: dateComponents){
        let dayPassed = userCalendar.dateComponents([.day], from: calculateDate, to: currentDate).day!
        let monthPassed = userCalendar.dateComponents([.month], from: calculateDate, to: currentDate).month!
        let yearPassed = userCalendar.dateComponents([.year], from: calculateDate, to: currentDate).year!
        
        print("\(yearPassed) years, \(monthPassed) months and \(dayPassed) days have passed since")

    }
}

calculateDateValue(from: 15, 12, 1994)
