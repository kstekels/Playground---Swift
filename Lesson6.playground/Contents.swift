import UIKit

//Lesson 6
//Mark: - Enumeration

var someDay = "Monday"

func setupAlarm(){
    if someDay == "monday"{
        print("get up at 8Am")
    }else{
        print("no alarm")
    }
}

setupAlarm()

// ----------------------------
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday, friday
}

//var weekday = Weekday.thursday
var weekday: Weekday = .monday

func setupBedTime(){
    if weekday == .monday || weekday == .tuesday{
        print("get up at 8AM")
    }else{
        print("No alarm")
    }
}
setupBedTime()

// ---------------------------

func setupSleepAlarm(){
    switch weekday {
    case .monday:
        print("get up at 8AM")
    case .tuesday:
        print("get up at 9AM")
    case .wednesday:
        print("get up at 10AM")
    case .thursday:
        print("get up at 11AM")
    case .friday:
        print("get up at 12AM")
    default:
        print("no alarm")
    }
}

weekday = .thursday
setupSleepAlarm()

enum CalculationType: String{
    case addition = "+" // constant
}

var calc = CalculationType.addition
print(calc.rawValue)

enum Planet: Int{
    case mercuty = 1, venus, earth, mars, jupiter, saturn, neptune, uranus
}

var somePlanet = Planet.earth
print("earth is the \(somePlanet.rawValue) planet from the sun system")


enum Weekend {
    case saturday(String)
    case sunday(String, Int, String)
}

var wnd = Weekend.sunday("setup bed time at", 11, "PM")
print(wnd)


// Mark: -- Struct // Unique

struct ChessBoard {
    var player: String
    var x: Int
    var y: Int
    
    func getPositionOnBoard() {
        print("The position of \(player): X \(x), Y \(y)")
    }
}

var playerOne = ChessBoard(player: "Tom", x: 10, y: 8)
var playerTwo = ChessBoard(player: "Sam", x: 2, y: 4)

playerOne.getPositionOnBoard()
playerTwo.getPositionOnBoard()


// simple class

class MacBook{
    var name: String
    var year: Int
    var color: String
    
    init(name: String, year: Int, color: String) {
        self.name = name
        self.year = year
        self.color = color
    }
    
    func getSpecs() {
        print("\(name), \(year), \(color)")
    }
    
}

let macBookPro = MacBook(name: "MacBook Pro", year: 2020, color: "grey")
macBookPro.getSpecs()

let macbookAir = macBookPro
macbookAir.name = "MacBook Air"
macbookAir.getSpecs()


// Structured class / no inheritance, no polymorphism

struct Iphone {
    var name: String
    var year: Int
    var color: String
    
    func getSpecs() {
        print("\(name), \(year), \(color)")
    }
}

let iPhoneXR = Iphone(name: "Iphone XR", year: 2019, color: "Black")

var iPhoneXS = iPhoneXR
iPhoneXS.name = "Iphone XS"

iPhoneXR.getSpecs()
iPhoneXS.getSpecs()


