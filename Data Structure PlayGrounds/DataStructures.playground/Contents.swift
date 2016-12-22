//: Playground - noun: a place where people can play

import UIKit

//var str = "Hello, playground"
//
//class Stack {
//    var stackArray = [String]()
//    
//    init() {
//        
//    }
//    
//    func push(stringToPush : String) {
//        self.stackArray.append(stringToPush)
//    }
//    
//    func pop() -> String? {
//        if self.stackArray.last != nil {
//            let stringToReturn = self.stackArray.last
//            self.stackArray.removeLast()
//            return stringToReturn
//        } else {
//            return nil
//        }
//    }
//}
//
//
//var myStark = Stack()
//myStark.push(stringToPush: "Jon")
//myStark.push(stringToPush: "Bran")
//myStark.push(stringToPush: "Rickon")
//myStark.push(stringToPush: "Rob")
//myStark.pop()
//myStark.pop()
//print(myStark.stackArray)
//
//
let numbersList : Array<Int> = [1, 2, 4, 3, 9, 5, 6, 10, 7, 8]
//
let sorted = numbersList.sorted()
//
//// Linear Time Notation - as n grows, so does the amount of time it takes to run the algorithm
func linearSearch1(key : Int) {
    // check all possible values to see if key exists in the array
    for number in sorted {
        if number == key {
            print("value at \(key) found at position \(number)")
            // break stops the search when the if conditional is true
            break
        } else {
            print("value at \(key) not found")
            
        }
    }
}
//
//linearSearch(key: 8)
//linearSearch(key: 4)
//linearSearch(key: 11)
//linearSearch(key: 1)
//
//// Logarithmic Time Notation
//
//func binarySearch(key : Int, imin : Int, imax: Int) {
//    
//    // find the middle index value in the array
//    let midIndex : Double = round(Double((imin + imax) / 2))
//    // find the middle number in the array by the index value
//    let midNumber = sorted[Int(midIndex)]
//    
//    // reduce the range
//    if midNumber > key {
//        binarySearch(key: key, imin: imin, imax: Int(midIndex) - 1)
//    }
//    
//    else if midNumber < key {
//        binarySearch(key: key, imin: Int(midIndex) + 1, imax: imax)
//    }
//    
//    else if  midNumber == key {
//        print("value \(key) found")
//    }
//    
//    else {
//        print("value not found in index.")
//    }
//}
//
//binarySearch(key: 8, imin: 1, imax: 10)
////binarySearch(key: 4, imin: 1, imax: 10)
////binarySearch(key: 1, imin: 1, imax: 10)

// MARK : Wayne Bishop Search algorithms


extension Array where Element: Comparable {
    
    
    //MARK: Index Operation
    
    
    //returns middle index
    func midIndex() -> Index {
        return startIndex + (count / 2)
    }



func linearSearch(forElement key: Element) -> Bool {
    
    //check all possible values
    for number in self {
        if number == key {
            return true
        }
    }
    
    return false
    
}
    mutating func binarySearch(forElement key: Element) -> Bool {
        
        
        var result = false
        
        //establish indices
        let min = self.startIndex
        let max = self.endIndex - 1
        let mid = self.midIndex()
        
        
        //check bounds
        if key > self[max] || key < self[min] {
            print("search value \(key) not found..")
            return false
        }
        
        
        //evaluate chosen number..
        let n = self[mid]
        
        
        print(String(describing: n) + "value attempted..")
        
        
        if n > key {
            var slice = Array(self[min...mid - 1])
            result = slice.binarySearch(forElement: key)
        }
            
        else if n < key {
            var slice = Array(self[mid + 1...max])
            result = slice.binarySearch(forElement: key)
        }
            
        else {
            print("search value \(key) found..")
            result = true
        }
        
        return result
    }

}
var array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]

print(array.linearSearch(forElement: 4))
array.linearSearch(forElement: 2)

array.binarySearch(forElement: 12)



func linearSearch2(forElement key: Int, inArray arr : [Int]) -> Bool {
    
    //check all possible values
    for number in arr {
        if number == key {
            return true
        }
    }
    return false
}

linearSearch2(forElement: 5, inArray: array)
linearSearch2(forElement: 1, inArray: array)

let test = "c"
print(test.utf8)
print(test.utf16)

// Find max value in an array

let myArray = [0, 1, 5, 7, 9, 12, 18, 2, 5, 33, 88, 0, 44]

func maxValue(numbersArray array : [Int]) -> Int {

    var maxValue = array[0]
    print(array.count)
    
    for index in 0..<array.count {
        if array[index] > maxValue {
            maxValue = array[index]
            print("New max value is: \(maxValue)")
        }
    }
    
//    for (index, _) in array.enumerated() {
//            if array[index] > maxValue {
//                maxValue = array[index]
//                print("New max value is: \(maxValue)")
//            }
//        
//    }
    
    return maxValue
}

maxValue(numbersArray: myArray)

func averageValue() {
    // average = sum of the array / # of values in array
    // Step 1: determine the length of the array
    // Step 2: determine the sum of the values in the array
    // Step 3: determine the average based on two previous calculations
}

// Insertion sort


