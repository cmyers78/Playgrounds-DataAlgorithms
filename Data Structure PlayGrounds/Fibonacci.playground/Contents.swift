//: Playground - noun: a place where people can play

import UIKit

func fib(num : Int) -> Int {
    
    var currentAnswer = 0
    
    if num == 1 || num == 0 {
        return num
    }
    
    var numBefore = 1
    var numBeforeBefore = 0
    
    for _ in 1...(num - 1) {
        currentAnswer = numBefore + numBeforeBefore
        numBeforeBefore = numBefore
        numBefore = currentAnswer
    }
    
    return currentAnswer
    
}

fib(5)
