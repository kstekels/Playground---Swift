import UIKit

//Mark: - OOP

// blog
// Garbage way
//let postTitle = "OOP"
//let postText = "Some"
//let postAuthor = "KS"
//
//let postTitle2 = "OOP"
//let postText2 = "Some"
//let postAuthor2 = "KS"
//


// class
class Post{
    var title = ""
    var text = ""
    var author = ""
}

let firstPost = Post()
firstPost.title = "This is my first post"
firstPost.text = "sdsd"
firstPost.author = "KarliS"

let secondPost = Post()
secondPost.text = "wewewewe"
secondPost.title = "asdasada"
secondPost.author = "KS"

print("Author \(firstPost.author) has published new post \(firstPost.title) which content: \(firstPost.text)")
print("Author \(secondPost.author) has published new post \(secondPost.title) which content: \(secondPost.text)")

firstPost === secondPost


//

class Comment {
    var title = ""
    var text = ""
    var numberOfLikes = 20
    
    func addLikes() {
        numberOfLikes += 1
    }
}

let firstComment = Comment()
firstComment.title = "OOP"
firstComment.text = "TXT"
firstComment.addLikes()
firstComment.addLikes()
firstComment.addLikes()

let secondComment = Comment()
secondComment.title = ":)"
secondComment.numberOfLikes

print("The number of likes for \(firstComment.title) is \(firstComment.numberOfLikes)")
print("The number of likes for \(secondComment.title) is \(secondComment.numberOfLikes)")



// Mark: -INITIALIZATION

class Human {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

let person = Human(name: "Bob", age: 22)
person.age
person.name


class Player {
    var team = "NY"
    var number: Int? = 10
    var tatoo = true
    
    func description() -> String {
        if let playerNumber = number {
            return "Hello, I am playing in \(team) team and my number is \(playerNumber)"
        }else{
            return "Hello, I am playing in \(team)!"
        }
    }
}

let playerOne = Player()
playerOne.team = "LA"
playerOne.description()

let playerTwo = Player()
playerTwo.team = "Toronto"
playerTwo.description()

var array = [Player]()

array.append(playerOne)
array.append(playerTwo)
print(array)

//MARK:  -Inheritance

class Parent {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func walk(){
        print("I can walk")
    }
    
    func sleep(){
        print("I can sleep")
    }
    
    func eat(){
        print("I can eat")
    
}
}



let dad = Parent(name: "SAM", age: 44)
dad.name
dad.sleep()

class Child: Parent {
    func aducation(){
        if age >= 3 && age <= 7{
            print("kindergarden age")
        }else if age < 3 {
            print("Too early for pre school education")
        }else{
            print("Too late for pre school education")
        }
    }
}

let littleBoy = Child(name: "Tom", age: 2)
littleBoy.aducation()
littleBoy.age


class SchoolChild: Child{
    var student = false
}

let schoolChild = SchoolChild(name: "Tim", age: 12)
schoolChild.student = true


// Mark: - Polymorphism
class Figure{
    func draw() {
    }

}

// rewriting function
class circle: Figure {
    override func draw(){
        print("Draw Circle")
    }
}

class Rectangle: Figure{
    override func draw() {
        print("Draw Rectangle")
    }
}

class Triangle: Figure{
    override func draw() {
        print("Draw Triangle")
    }
}

let triangle = Triangle()
triangle.draw()

func drawFigure(_ figure: Figure){
    figure.draw()
}

drawFigure(triangle)
