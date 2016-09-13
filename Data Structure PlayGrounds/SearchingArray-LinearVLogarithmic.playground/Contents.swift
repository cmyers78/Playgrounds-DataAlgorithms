//: Playground - noun: a place where people can play

import UIKit

let numberList : Array<Int> = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

// : Linear Approach to searching through an array.

func linearSearch(key : Int) {
    for number in numberList {
        if number == key {
            print("value at \(key) found..")
            break
        }
    }
}

linearSearch(5)


// : Logarithmic Approach to searching through an array.

func binarySearch (key : Int, imin: Int, imax: Int) {
    var midIndex : Double = round(Double((imin + imax) / 2))
    var midNumber = numberList[Int(midIndex)]
    
    //reduce the range
    if midNumber > key {
        binarySearch(key, imin: imin, imax: Int(midIndex) - 1)
    }
    
    //increase the range
    else if (midNumber < key) {
        binarySearch(key, imin: Int(midIndex) + 1, imax: imax)
    }
    
    else {
        print("value \(key) found")
    }
}

binarySearch(8, imin: 0, imax: 10)
binarySearch(4, imin: 0, imax: 10)


