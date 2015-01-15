import Foundation


func isEven(num: Int) -> Bool {
    return num % 2 == 0
}

func isOdd(num: Int) -> Bool {
    return num % 2 != 0
}

func isMultOf3(num: Int) -> Bool {
    return num % 3 == 0
}

func getMultOfPredicate(mult: Int) -> (Int) -> Bool {
     return { $0 % mult == 0 }
}

func isLess(left: Int, #than: Int, _ prompt: String = "checking...") -> Bool {
    println(prompt)
    return left < than
}


func myApp() {
    println("Hello, World!")
}
