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

func findBetterWaySale(arrayOfPrices : [Int]) -> Int {
    
    // declare a maximum profit to initialize
    var maxProfit = 0
    // set minimum price to be the first item in the array
    var minimumPrice = arrayOfPrices[0]
    
    //loop through the prices array
    for currentPrice in arrayOfPrices {
        
        // check to see if the current position in the array is the lowest price compared to the previous minimum price..if so, update minimum price
        minimumPrice = min(minimumPrice, currentPrice)
        
        // compute the profit from the current price and the minimum price
        let potentialProfit = currentPrice - minimumPrice
        
        //find max profit
        maxProfit = max(maxProfit, potentialProfit)
        
    }
    
    
    
    return maxProfit
    
}

findBetterWaySale(stockPricesYesterday)


