// functions

func greet(name: String) -> String {
    return "Hello, \(name)!"
}
var message: (String) -> String = greet
print("\(message("kishan")) from Swift functions")

func avengers()  {
    print("Avengers Assemble!")
}
avengers()

func add(a: Int, b: Int) -> Int {
    return a + b
}
let sum = add(a: 5, b: 7)
print("Sum of 5 and 7 is \(sum)")

func multiply(_ a: Int, _ b: Int) -> Int {
    return a * b
}
let product = multiply(4, 6)
print("Product of 4 and 6 is \(product)")

func name() -> (String, String) {
    return ("Tony", "Stark")
}
print("Character name is \(name().0) \(name().1)")

func factorial(_ n: Int) -> Int {
    if n <= 1 {
        return 1
    } else {
        return n * factorial(n - 1)
    }
}
let fact5 = factorial(5)
print("Factorial of 5 is \(fact5)")

