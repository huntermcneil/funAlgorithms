import UIKit

func alternatingSort(a: [Int]) -> Bool {
    var b: [Int] = []
    var a = a

    while a.count > 0 {
        b.append(a.removeFirst())
        b.append(a.removeLast())
        print(b)
    }
    return true
}

alternatingSort(a: [1,2,3,4,5,6,7])
