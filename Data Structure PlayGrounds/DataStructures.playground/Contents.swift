//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Stack {
    var stackArray = [String]()
    
    init() {
        
    }
    
    func push(stringToPush : String) {
        self.stackArray.append(stringToPush)
    }
    
    func pop() -> String? {
        if self.stackArray.last != nil {
            let stringToReturn = self.stackArray.last
            self.stackArray.removeLast()
            return stringToReturn
        } else {
            return nil
        }
    }
}


var myStark = Stack()
myStark.push(stringToPush: "Jon")
myStark.push(stringToPush: "Bran")
myStark.push(stringToPush: "Rickon")
myStark.push(stringToPush: "Rob")
myStark.pop()
myStark.pop()
print(myStark.stackArray)


let numbersList : Array<Int> = [1, 2, 4, 3, 9, 5, 6, 10, 7, 8]

let sorted = numbersList.sorted()

// Linear Time Notation - as n grows, so does the amount of time it takes to run the algorithm
func linearSearch(key : Int) {
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

linearSearch(key: 8)
linearSearch(key: 4)
linearSearch(key: 11)
linearSearch(key: 1)


