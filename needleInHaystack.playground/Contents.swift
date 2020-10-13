import UIKit

//Given two strings return the index of first occurrence of needle in haystack or return -1 if needle is not part of the haystack

func needleHayStack(_ haystack: String, _ needle: String) -> Int {
    
    let hayArr = Array(haystack)
    let needleArr = Array(needle)
    let hayCount = hayArr.count
    let needleCount = needleArr.count
    
    if hayCount < needleCount { return -1 }
    if hayCount <= 0 { return -1 }
    
    let loopLength = hayCount - needleCount
    
    for i in 0...loopLength {
        if hayArr[i] == needleArr[0] {
            for j in 0..<needleCount {
                if hayArr[i+j] != needleArr[j] {
                    break
                }
                
                if j+1 == needleCount {
                    return i
                }
            }
        }
    }
    return -1
}

print(needleHayStack("hello", "lo"))
