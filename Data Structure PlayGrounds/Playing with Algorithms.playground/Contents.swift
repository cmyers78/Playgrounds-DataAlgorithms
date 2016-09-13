//: Playground - noun: a place where people can play

import UIKit

var primeArray : [Int] = []

func isPrime(n: Int) -> Bool {
    // if the number entered is less than or equal to one, it is not prime
    if n <= 1 {
        return false
    }
    
    // if the number has already failed the first if statement, but passes the else if, it returns prime numbers 2 & 3
    else if n <= 3 {
        return true
    }
    
    // if the number hasn't passed the first two conditionals, the else evalutes whether the square of i is less than or equal to the number being evaluated, as long as it is, the loop performs modular division.  if number divided by i has no remainder, the number is not prime.  The loop will then evaluate all numbers until the while loop is false.  if the number fails all tests during the while loop, the number is prime.
    else {
        var i = 2
        while i*i <= n {
            if n % i == 0 {
                return false
            }
            i = i + 1
        }
        return true
    }
}

for i in 1...1000 {
    if isPrime(i) {
        primeArray.append(i)
        
    }
}

func findPrime(array : [Int], target : Int) -> Int {
    

    
    var min = 0
    var max = array.count - 1
    var guess : Int
    
    while (max >= min) {
        guess = (min + max) / 2
        print(guess)
        print(array[guess])
        
        if (array[guess] == target) {
            print ("\(target) exists in the array")
            return guess
        } else if (array[guess] < target) {
            min = guess + 1
        } else {
            max = guess - 1
        }
    }
    return -1
}

findPrime(primeArray, target: 881)
