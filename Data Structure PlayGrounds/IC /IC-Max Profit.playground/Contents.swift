//: Playground - noun: a place where people can play

import UIKit

enum StockPriceError : Error, CustomStringConvertible {
    case lessThanTwo
    
    var description: String {
        return "Getting a profit requires at least 2 prices"
    }
}

let stockPricesYesterday = [10, 7, 5, 3, 2, 1]

let singleArray = [1042]


func getMaxProfit(stockArray array : [Int]) throws -> Int {
    if array.count < 2 {
        throw StockPriceError.lessThanTwo
    }
    
    var minPrice = array[0]
    var maxProfit = array[1] - array[0]
    
    for i in 1..<array.count {
        
        let currentPrice = array[i]
        let potentialProfit = currentPrice - minPrice
        maxProfit = max(maxProfit, potentialProfit)
        minPrice = min(minPrice, currentPrice)
    }
    
    return maxProfit
}

try! getMaxProfit(stockArray: stockPricesYesterday)

do {
    try getMaxProfit(stockArray: singleArray)
} catch {
     StockPriceError.lessThanTwo
}

