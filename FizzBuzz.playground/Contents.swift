import UIKit

func fizzBuzz(_ n: Int) -> [String] {
    var array: [String] = []
    for i in 1...n {
            if i % 15 == 0 {
                array.append("FizzBuzz")
            } else if i % 3 == 0 {
                array.append("Fizz")
            } else if i % 5 == 0 {
                array.append("Buzz")
            } else {
                array.append(String(i))
            }
        }
    return array
}

fizzBuzz(100)
