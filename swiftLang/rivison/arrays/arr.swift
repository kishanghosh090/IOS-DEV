// import Foundation
// let oldArray = NSMutableArray(
//     array: [
//         "Anna",
//         "Alex",
//         "Brian",
//         "Jack"
//     ]
// )

// oldArray.add("Mary") // valid
// print(oldArray)

// func changeTheArray(_ array: NSArray) {
//     let copy = array as! NSMutableArray // it is possible to change the copy of NSArray
//     copy.add("John") // it changes the orginal array as well because NSMutableArray is reference type
//     print("Inside function: \(copy)")
// }
// changeTheArray(oldArray)
// print(oldArray)


// let objcArray: NSMutableArray = [1, 2, 3]
// let swiftArray = objcArray as! [Int]  // convert to Swift Array


// var arr: [String] = ["A", "B", "C"]

// // swiftArray is mutable, 

// arr.append("D") // valid
// arr.append(contentsOf: ["Shakia", "William"]) // it is used to add multiple elements at once

// print(arr)




class IntegerReference {
    var value = 10
}
var firstIntegers = [IntegerReference(), IntegerReference()]
var secondIntegers = firstIntegers


// Modifications to an instance are visible from either array
firstIntegers[0].value = 100
// print(secondIntegers[0].value)
// Prints "100"


// Replacements, additions, and removals are still visible
// only in the modified array
firstIntegers[0] = IntegerReference()
secondIntegers = firstIntegers
print(firstIntegers[0].value)
// Prints "10"
print(secondIntegers[0].value)
// Prints "100"

var myName = "john"
myName = myName.uppercase()


print(myName) // Prints "John"