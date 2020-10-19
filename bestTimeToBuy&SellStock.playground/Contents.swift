import UIKit

//Say you have an array for which the ith element is the price of a given stock on day i.
//
//If you were only permitted to complete at most one transaction (i.e., buy one and sell one share of the stock), design an algorithm to find the maximum profit.
//
//Note that you cannot sell a stock before you buy one.

func maxProfit(_ prices: [Int]) -> Int {
        if prices.isEmpty { return 0 }

        var minValue = prices[0]
        var maxProfit = 0
                
        for price in prices {
            if (price < minValue) {
                minValue = price
            } else if price - minValue > maxProfit {
                maxProfit = price - minValue
            }
        }
        return maxProfit
    }

maxProfit([7, 1, 5, 3, 6, 4])

//Explanation: Buy on day 2 (price = 1) and sell on day 5 (price = 6), profit = 6-1 = 5.
//Not 7-1 = 6, as selling price needs to be larger than buying price.
