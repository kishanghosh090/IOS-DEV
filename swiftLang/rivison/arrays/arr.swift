import Foundation
let oldArray = NSMutableArray(
    array: [
        "Anna",
        "Alex",
        "Brian",
        "Jack"
    ]
)

oldArray.add("Mary") // valid
print(oldArray)

func changeTheArray(_ array: NSArray) {
    let copy = array as! NSMutableArray // it is possible to change the copy of NSArray
    copy.add("John") // it changes the orginal array as well because NSMutableArray is reference type
    print("Inside function: \(copy)")
}
changeTheArray(oldArray)
print(oldArray)
