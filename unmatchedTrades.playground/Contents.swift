import UIKit

//A trade is defined as a fixed-width string containing the 4 properties given below separated by commas:
//
//Symbol (4 alphabetical characters, left-padded by spaces)
//Type (either "B" or "S" for buy or sell)
//Quantity (4 digits, left-padded by zeros)
//ID (6 alphanumeric characters)
//e.g.
//"AAPL,B,0100,ABC123"
//
//which represents a trade of a buy of 100 shares of AAPL with ID "ABC123"
//
//Given two lists of trades - called "house" and "street" trades, write code to filter out groups of matches between trades and return a list of unmatched house and street trades sorted alphabetically.


func unmatchedTrades(house: [String], street: [String]) -> [String] {
    //Create variables and Dictionary
    var unmatched = [String]()
    var dic = [String: Int]()
    
    //Loops through house and street arrays
    for i in house {
        dic[i] = (dic[i] ?? 0) + 1
    }
    
    for i in street {
        dic[i] = (dic[i] ?? 0) + 1
    }
    
    //Add unmatched trades to unmatched array
    for key in dic.keys {
        if let value = dic[key], value % 2 != 0 {
            unmatched.append(key)
        }
    }
    
    //Return array in ABC order
    return unmatched.sorted()
}

unmatchedTrades(house: [
    "AAPL,B,0100,ABC123",
    "AAPL,B,0100,ABC123",
    "GOOG,S,0050,CDC333"
    ], street: [
        " FB,B,0100,GBGGGG",
        "AAPL,B,0100,ABC123"
        ])
