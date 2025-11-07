// closures
// {
//     (a: Int, b: Int) -> Int in
        
    
// }

var myClosure: () -> () = {} 

var numClosure: (Int) -> (Int) = { 
    (a: Int) -> Int in
    return a + 1
}

var val = 1

print("numClosure(5):", numClosure(val))
print(val)

var anotherNumClosure = {myNum in
    return myNum * 2
}
print("anotherNumClosure(5):", anotherNumClosure(val))// closures is used to pass around functionality as first class citizens
var founded = {()-> Int in
    return 42
}
print("founded():", founded())
var multiplyClosure = { (a: Int, b: Int) -> Int in
    return a * b
}
print("multiplyClosure(3,4):", multiplyClosure(3,4))
var greetClosure = { (name: String) -> String in
    return "Hello, \(name)!"
}
print(greetClosure("Alice"))
swapArr.swapAt(0, 2)
print("swapArr after swapAt(0,2):", swapArr)

var anotherFounders = { (names: [String]) -> [String] in
    return names.sorted()
}
let foundersList = ["Steve", "Bill", "Larry", "Elon"]
print("anotherFounders(foundersList):", anotherFounders(foundersList))
var swapArr = [1, 2, 3, 4, 5]
print("swapArr before swapAt(0,2):", swapArr)
var swapClosure = { (arr: inout [Int], index1: Int, index2: Int) -> () in
    let temp = arr[index1]
    arr[index1] = arr[index2]
    arr[index2] = temp
}
swapClosure(&swapArr, 0, 2)
print("swapArr after swapClosure(0,2):", swapArr)

