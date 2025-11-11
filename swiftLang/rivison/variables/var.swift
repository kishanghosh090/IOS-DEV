// let and var is used to create variable in swift (let is used to create constant variable and var is used to create variable which can be changed later)

// let -> immutable (cannot be changed later)
// var -> mutable (can be changed later)

// Example of let
let i:Int?
i = nil
if i != nil {
    // this example will compile successfully
    print("i is \(i ?? 0)")
}else {
    print("i is nil")
}


/*
⚙️ Explanation
Int? → means it’s an optional Int.
= nil → gives it an initial value.
i ?? 0 → means “if i is nil, use 0 instead.”


let = must assign immediately, cannot change
var = automatically gets nil, can be changed later
*/


// You can include as many optional bindings and Boolean conditions in a single if statement as you need to, separated by commas. If any of the values in the optional bindings are nil or any Boolean condition evaluates to false, the whole if statement’s condition is considered to be false. The following if statements are equivalent:
if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber) < \(secondNumber) < 100")
}
// Prints "4 < 42 < 100".


if let firstNumber = Int("4") {
    if let secondNumber = Int("42") {
        if firstNumber < secondNumber && secondNumber < 100 {
            print("\(firstNumber) < \(secondNumber) < 100")
        }
    }
}
// Prints "4 < 42 < 100".