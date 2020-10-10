import UIKit

//allow numbers to repeat no more than twice, then return the count of new array in-place
func removeDuplicates(_ nums: [Int]) -> Int {
    guard nums.count > 2 else {
        return nums.count
    }
    
    var nums = nums
    var index = 1
    for i in 2..<nums.count {
        if nums[index] != nums[index - 1] || nums[index] != nums[i] {
            index += 1
            nums[index] = nums[i]
        }
    }
    return index + 1
}

let numbers = [1, 1, 2, 3, 3, 3, 4]
removeDuplicates(numbers)
