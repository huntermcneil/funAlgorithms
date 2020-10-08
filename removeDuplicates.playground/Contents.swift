import UIKit

//Given a sorted array, remove the duplicates IN-PLACE and return the new length
//Do not create a new array, modify the input array IN-PLACE

    func removeDuplicates(_ nums: [Int]) -> Int {
        if nums.count <= 0 {
            return 0
        }
        var nums = nums
        var index = 0
        for num in nums {
            if num != nums[index] {
            index += 1
            nums[index] = num
            }
        }
        return index + 1
    }

removeDuplicates([1, 1, 2, 2, 2, 3, 4])

//Print duplicates
let nums = [1, 1, 2, 2, 2, 3, 4]
for i in 0..<removeDuplicates(nums) {
    print(nums[i])
}
