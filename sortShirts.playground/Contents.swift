import UIKit

var shirts = ["m", "s", "l", "l", "s", "m", "m", "s"]

// one line
func sortShirts1(shirts: [String]) -> [String] {
    return shirts.sorted().reversed()
}

sortShirts1(shirts: shirts)


// for in loop
func sortShirts2(shirts: [String]) -> [String] {
    var smallShirts: [String] = []
    var medShirts: [String] = []
    var largeShirts: [String] = []
    
    for shirt in shirts {
        if shirt == "s" {
            smallShirts.append(shirt)
        } else if shirt == "m" {
            medShirts.append(shirt)
        } else if shirt == "l" {
            largeShirts.append(shirt)
        }
    }
    
    return smallShirts + medShirts + largeShirts
}

sortShirts2(shirts: shirts)
