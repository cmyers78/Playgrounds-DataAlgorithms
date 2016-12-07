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
