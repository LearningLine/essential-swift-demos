import Foundation

class Animal {
    var age: Int
    init(age: Int) {
        self.age = age
    }
}

class Pet : Animal {
    var name : String
    
    init(name: String, age: Int) {
        self.name = name
        super.init(age: age)
    }
    convenience init(_ name: String, _ age: Int) {
        self.init(name: name, age: age)
    }
}

class Dog : Pet {
    var loyalness = 7
}
class Cat : Pet {
    var aloofness = 5
}


var pet: Pet = Dog("Spot", 7)
var pet2: Pet = Cat(name: "Fluffy", age: 2)

if let dog = pet as? Dog {
    println("is a dog")
} else {
    println("is not a dog")
}


//pet.age++
//
//myFunc(pet)
//pet.print()
//
//println("Pet's age is \(pet.age)")




//pet.myFunc("Bradley", age: 7, height: 6.0)
class MyClass {
    
}
struct Time {
    var minutes: Int
    var hours: Int
    var seconds: Int
    
    var myClass: MyClass
}

enum CarPosition {
    case LeadLap
    case Behind
    case OutOfRace
    case InPit
}

var status = CarPosition.LeadLap
var stat: CarPosition = .LeadLap

stat = .Behind



