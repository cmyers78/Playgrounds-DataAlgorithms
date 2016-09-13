//: Playground - noun: a place where people can play

import UIKit

    func multiply(a : Int, b : Int) -> Int {
        
        var answer : Int = 0
        
        if a >= 0 && b >= 0 {
            for _ in 1...b {
                answer = answer + a
        }
        
        } else if a < 0 && b >= 0 {
            for _ in 1...b {
                answer = answer + a
            }
        }
        else if a >= 0 && b < 0 {
            for _ in 1...(b * -1) {
                answer = answer - a
            }
        }
        else {
            for _ in 1...(b * -1) {
                answer = answer - a
            }
        }
        
        return answer
}
multiply(4, b: 4)
multiply(-4, b: 4)
multiply(-4, b: -4)
multiply(4, b: -4)



