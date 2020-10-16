import UIKit

// Given a string, find the first non-repeating character in it and return its index. If it doesn't exist, return -1.
func firstUniqChar(_ s: String) -> Int {
        guard s.count != 0 else { return -1 }

        var dic = [Character:Int]()
        for char in s {
            dic[char] = (dic[char] ?? 0) + 1
        }

        for (index, char) in s.enumerated() where dic[char] == 1 {
            return index
        }
        return -1
    }

firstUniqChar("leetcodel")


// basic use of dictionaries

var myDict = ["Key": "Value",
              "Key2": "Value2",
              "Key3": "Value3"]

let codes = ["Key", "Key2", "Key3"]

for i in codes {
    if let value = myDict[i] {
        print("\(i) \(value)")
    }
}
