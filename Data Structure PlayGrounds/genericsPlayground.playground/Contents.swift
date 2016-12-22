//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


func modify(input : Int, byApplying f: (Int) -> Int) -> Int {
    return f(input)
}
// Input is an Int which we use IN the following
// {(input: Int) -> Int in return input * 2}

let two = modify(input: 2, byApplying: {input in input * 2})

// <T> refers to a generic data type

func newModify<T>(input : T, byApplying f: (T) -> T) -> T {
    return f(input)
}

let three = newModify(input: 1) {input in input * 2}
print(three)
let fiver = newModify(input: 1.5) {input in input * 2}
print(fiver)

let greeting = newModify(input: "Hello", byApplying: {input in input + ", World!"})
print(greeting)
let greet = newModify(input: "Yo", byApplying: {(input : String) -> String in return input + " Adrian"})
print(greet)