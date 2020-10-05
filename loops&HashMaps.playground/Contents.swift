import UIKit

var sampleString = "1337"

func convert(string: String) -> Int {
    var total = 0
    
    // 1337 = 1000 + 300 + 30 + 7
    //1337 = 1 * 10^3 + 3 * 10^2 + 3 * 10^1 + 7 * 10^0
    
    // add 0-9 for complete list of numbers
    let valueMap = [
        "1" as Character: 1,
        "3": 3,
        "7": 7,
    ]
    
    for (i, c) in string.enumerated() {
        let exponent = string.count - i - 1
        if let value = valueMap[c] {
            let num = Decimal(value) * pow(10, exponent)
            total += NSDecimalNumber(decimal: num).intValue
        }
    }
    return total
}

convert(string: sampleString)
