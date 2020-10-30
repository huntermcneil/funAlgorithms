import UIKit

//Given an array nums of n integers, are there elements a, b, c in nums such that a + b + c = 0? Find all unique triplets in the array which gives the sum of zero.
//
//Notice that the solution set must not contain duplicate triplets.

func threeSum(_ nums: [Int]) -> [[Int]] {
        guard nums.count > 2 else {
              return []
        }
        var result = Set<[Int]>()
        let sortedNums = nums.sorted()
        
        for i in 0..<sortedNums.count - 1 {
             var left = i + 1
             var right = sortedNums.count - 1
            
            while left < right {
                let sum =  sortedNums[i] + sortedNums[left] + sortedNums[right]
                if sum == 0 {
                    let solution = [sortedNums[i], sortedNums[left], sortedNums[right]]
                    result.insert(solution)
                    left += 1
                    right -= 1
                } else if sum < 0 {
                    left += 1
                } else {
                    right -= 1
                }
            }
        }
        return Array(result)
    }

threeSum([-1, 0, 1, 2, -1, -4])
