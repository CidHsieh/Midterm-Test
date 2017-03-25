//: Playground - noun: a place where people can play

import UIKit

var setArray = Set<Int>()

func sortArray(array1:[Int], array2:[Int]) -> [Int] {
    
    setArray = Set(array1)
    for i in 0...array2.count - 1 {
        setArray.insert(array2[i])
    }
    let newArray = Array<Int>(setArray)
    let sortedArray = NSMutableArray(array: newArray)
    var sortedAboveIndex = newArray.count
    var swaps = 0
    
    repeat {
        var lastSwapIndex = 0
        for j in 1...newArray.count - 1 {
            if (sortedArray[j - 1 ] as! Int) > (sortedArray[j] as! Int) {
                sortedArray.exchangeObject(at: j, withObjectAt: j - 1)
                lastSwapIndex = j
                swaps += 1
            }
        }
        sortedAboveIndex = lastSwapIndex
        
    } while (sortedAboveIndex != 0)
    
    let finalArray = sortedArray as AnyObject as! [Int]
    return finalArray
}





var test = sortArray(array1: [0,9,4,2,5], array2: [4,2,3,5])











