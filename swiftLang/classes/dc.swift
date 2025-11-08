class Dc {
    var id: Int
    var name: String
    var power: String
    var age: Int
    // self is like python's self it refers to the current instance of the class
    init(id: Int, name: String, power: String, age: Int) {
        self.id = id
        self.name = name
        self.power = power
        self.age = age
    }
    func greet() -> String {

        return "Hello, I am \(name), my super power is \(power) and I am \(age) years old."

    }
    func doTryUse()  {
        
        print("\(name) is trying to use their power: \(power)")
        // handle errors or exceptions here 
        // For example, if the power fails to activate
        let success = Bool.random()
        if success {
            print("\(name) successfully used their power!")
        } else {
            print("\(name) failed to use their power.")
        }
    }
    
}
let superman = Dc(id: 1, name: "Superman", power: "Super strength, flight, heat vision", age: 35)
print(superman.greet())

// use doTryUse method
superman.doTryUse()

// exception handling can be more complex depending on the scenario
// For example, you might want to throw and catch specific errors
// example of throwing an error (not implemented here for simplicity)
// enum PowerError: Error {
//     case powerFailed
// }
// func tryUsePower() throws {
//     let success = Bool.random()
//     if !success {
//         throw PowerError.powerFailed
//     }
//     print("\(name) successfully used their power!")
// }