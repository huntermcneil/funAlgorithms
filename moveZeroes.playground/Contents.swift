import UIKit

var numbers = [0, 1, 2, 0, 1, 3, 0, 1, 0]

func moveZeroes(_ nums: inout [Int]) {
    var zeroArray: [Int] = []
        for i in nums {
            if i == 0 {
                zeroArray.append(i)
            }
        }
    nums = nums.filter { $0 != 0 }
            nums.append(contentsOf: zeroArray)
            print(nums)
}

moveZeroes(&numbers)
