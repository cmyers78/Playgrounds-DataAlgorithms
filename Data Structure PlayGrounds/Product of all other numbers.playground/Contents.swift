//: Playground - noun: a place where people can play

import UIKit



// loop through the array and multiply all numbers in the array except the current index.

// A brute force approach would use two loops to multiply the integer at every index by the integer at every nested_index, unless index == nested_index.

// output should read: [84, 12, 28, 21]

let testArray = [1, 7, 3, 4]


func loopArray(array : [Int]) -> [Int] {
    var newArray = [Int]()
    
    for outerIndex in array {
        //print(outerIndex)
        var product = 1
        
        for innerIndex in array {
            if innerIndex != outerIndex {
                product = product * innerIndex
                
                
            }
        }
        newArray.append(product)
    }
    return newArray
}

loopArray(testArray)

// this isn't working....

func getProductsOfIntsExceptIndex(array : [Int]) -> [Int] {
    var productsOfAllIntsExceptAtIndex = [Int(array.count)]
    
    var productThusFar = 1
    var counter = 0
    while counter < array.count {
        productsOfAllIntsExceptAtIndex[counter] = productThusFar
        productThusFar  *= array[counter]
        counter += 1
    }
    
    productThusFar = 1
    counter = array.count - 1
    while counter >= 0 {
        productsOfAllIntsExceptAtIndex[counter] *= productThusFar
        productThusFar = productThusFar * array[counter]
        counter = counter - 1
        
    }
    
    return productsOfAllIntsExceptAtIndex
}

//getProductsOfIntsExceptIndex(testArray)



