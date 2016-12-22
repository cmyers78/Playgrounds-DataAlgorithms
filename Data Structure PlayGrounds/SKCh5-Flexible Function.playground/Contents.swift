//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//var two = 2

func double(input: Int) -> Int {
    return input * 2
}



var textField = UITextField()
textField.text = "Hello"

func modifyField(field : UITextField) {
    field.text = "ooleH"
    field.text
}

modifyField(field: textField)
textField.text

func doubleInout( input : inout Int) {
    input = input * 2
}

//doubleInout(input: &two)


func doubleThree(input : Int) -> Int {
    return input * 2
}



// Extensions used to add behavior, not modify it.
extension Int {
    mutating func doubleInPlace() {
        self = self * 2
    }
    func double() -> Int {
        return self * 2
    }
}


//struct S {
//    init(_ n : String) {
//        print(n)
//    }
//    static var i = S("A")
//    static func f() {
//        i = S("B")
//    }
//}
//
//S.f()
//S.f()

extension String {
    func update(param : String) -> String {
        return self + "\(param)"
    }
}
var example = ""
example.update(param: "Example succeeded")
example
example = example.update(param: "Example succeeeeded")
example

// ---------------------------------------

let two = 2
let four = double(input: two)

func modify(input : Int, byApplying f : (Int) -> Int) -> Int {
    return f(input)
}
let eight = modify(input: four, byApplying: double)

func addSeven(input : Int) -> Int {
    return input + 7
}

let fifteen = modify(input: eight, byApplying: addSeven)

let x = 14
x << 1
x << 2
x << 3
x >> 1

let y = 30

x^y

let bitArray = [0, 2, 4, 89, 30, 50, 90]


// func double(input : Int) -> Int {
//      return input * 2
// }

    let tut = {(input : Int) -> Int in return input * 2}
let twelve = modify(input: 8, byApplying: tut)

let six = modify(input: 3){input in input * 2 }
let sixe = modify(input: 3){$0 * 2}
