// closures
// {
//     (a: Int, b: Int) -> Int in
        
    
// }

// var myClosure: () -> () = {} 

// var numClosure: (Int) -> (Int) = { 
//     (a: Int) -> Int in
//     return a + 1
// }

// var val = 1

// print("numClosure(5):", numClosure(val))
// print(val)

// var anotherNumClosure = {myNum in
//     return myNum * 2
// }
// print("anotherNumClosure(5):", anotherNumClosure(val))// closures is used to pass around functionality as first class citizens
// var founded = {()-> Int in
//     return 42
// }
// print("founded():", founded())
// var multiplyClosure = { (a: Int, b: Int) -> Int in
//     return a * b
// }
// print("multiplyClosure(3,4):", multiplyClosure(3,4))
// var greetClosure = { (name: String) -> String in
//     return "Hello, \(name)!"
// }
// print(greetClosure("Alice"))
// swapArr.swapAt(0, 2)
// print("swapArr after swapAt(0,2):", swapArr)

// var anotherFounders = { (names: [String]) -> [String] in
//     return names.sorted()
// }
// let foundersList = ["Steve", "Bill", "Larry", "Elon"]
// print("anotherFounders(foundersList):", anotherFounders(foundersList))
// var swapArr = [1, 2, 3, 4, 5]
// print("swapArr before swapAt(0,2):", swapArr)
// var swapClosure = { (arr: inout [Int], index1: Int, index2: Int) -> () in
//     let temp = arr[index1]
//     arr[index1] = arr[index2]
//     arr[index2] = temp
// }
// swapClosure(&swapArr, 0, 2)
// print("swapArr after swapClosure(0,2):", swapArr)

// func calculate(num: Int) -> Int {
//     return num * num
// }

// func calculate(num1: Int, num2: Int) -> Int {
//     return num1 * num1 + num2 * num2
// }

// func sumSqr(nums1: Int, nums2: Int, closureParams: (Int,Int) -> Int) -> Int {
//     return closureParams(nums1, nums2) // we are calling the closure here when we pass it as parameter no need to use 'in' keyword and we just call it like a normal function without labels of parameters of closure for example here we just use nums1 and nums2 directly 
// }
// let result = sumSqr(nums1: 3, nums2: 4, closureParams: calculate) //when we pass function as parameter we don't use () and just use the name of function
// print("sumSqr with calculate closure:", result)


// let result2 = sumSqr(nums1: 5, nums2: 12, closureParams: { (a: Int, b: Int) -> Int in
//     return a * a + b * b
// })
// print("sumSqr with inline closure:", result2)

// let result3 = sumSqr(nums1: 8, nums2: 15, closureParams: { a, b in
//     a * a + b * b
// })
// print("sumSqr with shorthand closure:", result3)



// func name(with url: URL,completionHandler: @escaping (Data?,URLResponse, Error?) -> Void) -> Void {
//     // Simulating an asynchronous operation
//     DispatchQueue.global().async {
//         // Simulate fetching name from URL
//         let fetchedName = "Sample Name from \(url.absoluteString)"
//         // Call the completion handler with the fetched name
//         completionHandler(fetchedName)
//     }
    
// }

// order closure execution
func printNumbers(result: () -> Void)  {
    print("Before executing closure")
    result()
    print("After executing closure")
    
}

printNumbers {
    print("Inside the closure: Printing numbers 1 to 5")
    for i in 1...5 {
        print(i)
    }
}

// order closure
func printNumbersOrder(result: @autoclosure () -> Void)  {
    print("Before executing closure")
    result()
    print("After executing closure")
}
printNumbersOrder(result: {
    print("Inside the autoclosure: Printing numbers 6 to 10")
    for i in 6...10 {
        print(i)
    }
}())