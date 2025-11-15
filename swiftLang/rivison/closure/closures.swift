import Foundation

// let greet = { (name: String) -> String in
//     return "Hello, \(name)!"
// }

// const greet = (name) => {
//   return `Hello, ${name}!`;
// }



// func add(_ lhs: Int, _ rhs: Int) -> Int {
//     return lhs + rhs
// }

// add(3, 5) // returns 8
let add: (Int,Int) -> Int = { (lhs: Int, rhs: Int) -> Int in
    return lhs + rhs
}

print(add(3, 5)) // prints 8

func customAdd(_ lhs: Int, _ rhs: Int, using fun: (Int, Int) -> Int) -> Int {
    return fun(lhs, rhs)
}

let result = customAdd(4, 6, using: add)
let result2 = customAdd(4, 6){ (a: Int, b: Int) -> Int in
    return a + b
}

print(result) // prints 10