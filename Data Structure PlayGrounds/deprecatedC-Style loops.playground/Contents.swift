//: Playground - noun: a place where people can play
import Foundation
import UIKit

for i in 0.stride(through: 10, by: 1) {
    print(i)
}


for i in 100.stride(to: 0, by: -1) {
    print(i*2)
}

let greet = "Hello"

print(String(greet.characters.reverse()))

greet.startIndex
greet.endIndex
greet[greet.startIndex]
greet[greet.endIndex.predecessor()]
greet[greet.startIndex.advancedBy(2)]

for chr in greet.characters {
    print(chr, terminator:"")
}