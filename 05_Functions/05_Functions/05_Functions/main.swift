import Foundation



//myApp()

//
//var n = Int(arc4random_uniform(100))
//
//
//var even = isEven(n)
//
//var less = isLess(n, than: 37, "my prompt")
//
//println("The number \(n) is even? \(even)")
//println("The number \(n) is less than 37? \(less)")
//
//

//func swap(inout a : Int, inout b : Int) {
//    println("my swap")
//    let tmp = a
//    a = b
//    b = tmp
//}
//var x = 3
//var y = 5
//println( (x, y) )       // prints (3, 5)
//swap(&x, &y)
//println( (x, y) )       // prints (5, 3)

//class Person {
//    var age = 25
//}
//
//func resetAge(var person: Person) {
//  person.age = 0
//}
//
//var p1 = Person()
//var p2 = Person()
//resetAge(p1)
//
//println("One \(p1.age)")
//println("Two \(p2.age)")
//swap(&p1, &p2)
//println("One \(p1.age)")
//println("Two \(p2.age)")


func count(arr: [Int], equalTo comp: Int) -> Int {
    var cnt = 0
    for val in arr {
        if val == comp {
            ++cnt
        }
    }
    return cnt
}

func countIf(arr: [Int], predicate: (Int) -> Bool) -> Int {
    var cnt = 0
    for val in arr {
        if predicate(val) {
            ++cnt
        }
    }
    return cnt
}


var nums = [2,4,35,26,27,12,3,2,6,3,6,8,43,2,4,56,]

println("Number of 2's is \(count(nums, equalTo: 2))")
println("Number of even's is \(countIf(nums, isEven))")
println("Number of odd's is \(countIf(nums, isOdd))")

var is3s = getMultOfPredicate(3)
println("Number of multiples of 3 is \(countIf(nums, is3s))")

var is5s = getMultOfPredicate(5)
println("Number of multiples of 5 is \(countIf(nums, is5s))")

typealias fun = (Int) -> Bool

var is4s: fun = { num in
 num % 4 == 0
}


println("Mults of 4 is \(countIf(nums, { n in n % 4 == 0 }))")



