//: Playground - noun: a place where people can play

import UIKit

var stockPricesYesterday = [10, 7, 5, 8, 11, 9]

// function needs to look at the difference between the second items in the array and compare it to the first, the third needs to look at the second item and the first item and find differences in both.  the 4th item needs to look at the differences in items 3, 2, & 1

func findBestSale(array : [Int]) -> Int {
    var maxProfit = 0
    
    for (item, _) in array.enumerate() {
        // loops through each position in the array
        
        for (insideItem, _) in array.enumerate() {
            
            // find earlier and later times for each pair
            let earlierTime = min(item, insideItem)
            let laterTime = max(item, insideItem)
            
            // find earlier and later prices
            let earlierPrice = stockPricesYesterday[earlierTime]
            let laterPrice = stockPricesYesterday[laterTime]
            
            // calculate the potential profit
            let potentialProfit = laterPrice - earlierPrice
            
            maxProfit = max(maxProfit, potentialProfit)
        }
    }
    
    return maxProfit
    
}

findBestSale(stockPricesYesterday)

