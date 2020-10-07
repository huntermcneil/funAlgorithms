import UIKit

var numbers = [1, 2, 3, 4, 3, 3]

//1. filter into [3, 3, 3], then filter into [2, 4] (even numbers)

let filtered = numbers.filter({return $0 % 2 == 0})
filtered

var filteredArray = [Int]()
for number in numbers {
    if number == 3 {
    filteredArray.append(number)
    }
}
filteredArray

//2. transform [1, 2, 3, 4] -> [2, 4, 6, 8] using map

let transformed = [1, 2, 3, 4].map({return $0 * 2})
transformed

var transformedArray = [Int]()
for number in [1, 2, 3, 4] {
    transformedArray.append(number * 2)
}
transformedArray

//3. sum [1, 2, 3, 4] -> 10 using reduce

let sum = [1, 2, 3, 4].reduce(0, {sum, number in sum + number})
sum

// even shorter
let sum2 = [1, 2, 3, 4].reduce(0, +)
sum2

var sumElements = 0
for number in [1, 2, 3, 4] {
    sumElements += number
}
sumElements
