import Foundation


var t = (1, 2, "hello")

println(t.0)
println(t.1)
println(t.2)



func <(left: NSDate, right: NSDate) -> Bool {
    var orderRes = left.compare(right)

    if orderRes == NSComparisonResult.OrderedAscending {
        return true
    }
    return false
}

var d1 = NSDate()
sleep(1)
var d2 = NSDate()


var s = [String]()

s.append("hello")

var mixed: [Any] = ["hi", 3, 7.3]

for v in mixed {
    println(v)
}

if d1 < d2 {
    println("it worked")
} else {
    println("wrong order")
}



var arr = ["hi", "hello", "goodbye"]

func changeGreeting(var greetings: [String]) {
    greetings.append("goodnight")
}

changeGreeting(arr)

for v in arr {
    println(v)
}

println("Array count is \(arr.count) and the capacity is \(arr.capacity)")
arr.append("hola")
println("Array count is \(arr.count) and the capacity is \(arr.capacity)")
arr = Array(arr)
println("Array count is \(arr.count) and the capacity is \(arr.capacity)")
