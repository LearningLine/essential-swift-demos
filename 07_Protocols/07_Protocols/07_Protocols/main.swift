import Foundation

class Pet : Printable, Equatable {
    var name: String
    var age : Int
    
    required init(name: String, age: Int) {
        self.name = name; self.age = age
    }
    
    var description : String {
        return "\(name) is \(age) years young"
    }
}

class Dog: Pet {
    init() {
        super.init(name: "", age: 0)
    }
    required init(name: String, age: Int) {
        super.init(name: name, age: age)
    }

}

func ==(left: Pet, right: Pet) -> Bool {
    return left.age == right.age
}


var dog = Pet(name: "Spot", age: 5)
var cat = Pet(name: "Fluffy", age: 3)


println("My cat \(cat) and my dog \(dog)")

let Pets5yearsOld = Pet(name: "", age: 5)
let Pets3yearsOld = Pet(name: "", age: 3)


switch dog {
case Pets5yearsOld:
    println("5")
case Pets3yearsOld:
    println("3")
default:
    println("unknown")
}


protocol MyProtocol {
    var prop : String { get }
}

class MyClass : MyProtocol {
    var prop : String = "test"
}


func useMyProtocol(prot: MyProtocol) {
    println(prot.prop)
}

var x = MyClass()

x.prop = "hello"

useMyProtocol(x)

x.prop = "goodbye"

useMyProtocol(x)

