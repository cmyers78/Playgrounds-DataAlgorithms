//: Playground - noun: a place where people can play

import UIKit

var sortingArray = ["May", "Ben", "Basil", "Lucy", "Jane", "Ferrol", "Mollie"]

sortingArray.sortInPlace()

sortingArray.sort()


for i in 0...10 {
    print( 100 - i)
}

for i in 0..<10 {
    print(i)
}
print()
print()

var numberList = [8, 2, 10, 7, 5]
var index = 0
var sorted = numberList.sort()

while index < sorted.endIndex {
    print(sorted[index])
    index = index + 1
    
}
