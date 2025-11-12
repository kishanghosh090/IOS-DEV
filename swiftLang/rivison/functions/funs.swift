import Foundation

var greeting = "Hello form kishan rana ghosh"
print(greeting)

// create a function to uppercase a string using strName.uppercased()
func uppercaseString(_ strName: String) -> String {
    return strName.uppercased()
}
let newString = uppercaseString("hello from rivison")
print(newString)

struct Person {

    func getAge() -> Int {
        return 10
    }

    func doSomething() -> Int {
        let age = getAge()
        return age
    }
}

func doSomething(
    with value: Int
) -> Int {
    if value < 0 {
        print("value must be greater than 0")
        return -1
    }
    func mainLogic(value: Int) -> Int {
        value + 2
    }
    return mainLogic(value: value + 3)
}
print(doSomething(with: -1212))
