// Playground - noun: a place where people can play

import Foundation

var name = "Mike"

switch name {
case "Paul", "Bradley":
    println("Happy birthday")
default:
    println("Hello \(name)")
}


var x: Int?

var z = x ?? 3

var y = x != nil ? x! : 3
