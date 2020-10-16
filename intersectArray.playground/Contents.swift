import UIKit

//Given two arrays, write a function to compute their intersection.

func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var dict = [Int: Int]()
        var results = [Int]()

        for num in nums1 {
            dict[num, default: 0] += 1
        }
        
        for num in nums2 {
            guard let count = dict[num], count > 0 else { continue }
            results.append(num)
            dict[num] = count - 1
        }
        
        return results
    }

intersect([1, 2, 2, 1], [4, 2, 2, 3])
