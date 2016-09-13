//: Playground - noun: a place where people can play

import UIKit

var numberList : Array<Int> = [8, 2, 10, 9, 11, 1, 7, 3, 4]

//: InsertionSorting
func insertionSort(var numbersList : Array<Int>) -> Array<Int> {
    
    var y, key : Int
    
    for x in 0..<numberList.count {
        key = numberList[x]
        
        for (y = x; y > -1; y -= 1) {
            if (key < numberList[y]) {
                numberList.removeAtIndex(y + 1)
                
                numberList.insert(key, atIndex: y)
            }
        }
    }
    
    return numberList
}

insertionSort(numberList)

//: Bubble Sorting

func bubbleSort(var numberList: Array<Int>) -> Array<Int> {
    
    var x, y, z, passes, key: Int
    
    //track iterations
    for x in 0..<numberList.count {
        passes = (numberList.count - 1) - x
        
        for y in 0..<passes {
            key = numberList[y]
            
            print ("comparing \(key) and \(numberList[y + 1])")
            
            // compare and rank values
            if (key > numberList[y + 1]) {
                z = numberList[y + 1]
                numberList[y + 1] = key
                numberList[y] = z
            }
        }
    }
    
    
    return numberList
}

bubbleSort(numberList)
