import UIKit

func containsDuplicate(_ nums: [Int]) -> Bool {
    var map = [Int: Int]()
    for num in nums {
        if map[num] != nil {
            return true
        } else {
            map[num] = 1
        }
    }
    return false
}

containsDuplicate([1, 2, 2, 3, 4])
