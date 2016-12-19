//: Playground - noun: a place where people can play

import UIKit

var array = ["Ned", "Robert", "Arya", "Jon", "Ygritte"]

let num = array.count
print(num)

for name in array {
    print(name)
}
print()

// takes a slice

for (index, name) in array[2...4].enumerate() {
    print("The index is: \(index) and the name is \(name)")
}

max(5, 4, 3)

min(-1, -5, 4, 2, 3, -6)
max(-1, -5, 4, 2, 3, -6)
