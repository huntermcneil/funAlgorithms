import UIKit

//Write a function that reverses a string. The input string is given as an array of characters char[].
//
//Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.

func reverseString(_ s: inout [Character]) {
    //there is the obvious s.reversed()
    
    //to manually reverse
        let lastIndex = s.count - 1
    for i in 0..<s.count/2 {
        s.swapAt(i, lastIndex - i)
      }
    }
