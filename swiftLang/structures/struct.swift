struct Marvel {
    var heroName: String
    var realName: String
    var superPower: String 
    var age: Int = 0 // Default value

    init(heroName: String = "", realName: String = "", superPower: String = "", age: Int = 0) {
        self.heroName = heroName
        self.realName = realName
        self.superPower = superPower
        self.age = age
    }
    func displayInfo() {
        print("Hero Name: \(heroName)")
        print("Real Name: \(realName)")
        print("Super Power: \(superPower)")
        print("Age: \(age)")
    }

    
}
let ironMan = Marvel(heroName: "Iron Man", realName: "Tony Stark", superPower: "Genius-level intellect, Powered armor suit", age: 48)
ironMan.displayInfo()

let spiderMan = Marvel(heroName: "Spider Man", realName: "Peter Parker", superPower: "Superhuman strength, agility, ability to cling to most surfaces", age: 21)
spiderMan.displayInfo()
let captainAmerica = Marvel(heroName: "Captain America", realName: "Steve Rogers", superPower: "Enhanced strength, agility, endurance, and healing", age: 101)
captainAmerica.displayInfo()
let blackWidow = Marvel(heroName: "Black Widow", realName: "Natasha Romanoff", superPower: "Expert tactician, martial artist, and marksman", age: 35)
blackWidow.displayInfo()
let thor = Marvel(heroName: "Thor", realName: "Thor Odinson", superPower: "Superhuman strength, control over lightning and weather", age: 1500)
thor.displayInfo()
let hulk = Marvel(heroName: "Hulk", realName: "Bruce Banner", superPower: "Superhuman strength and durability", age: 49)
hulk.displayInfo()
let blackPanther = Marvel(heroName: "Black Panther", realName: "T'Challa", superPower: "Enhanced strength, agility, and senses", age: 35)
blackPanther.displayInfo()

// You can create more instances of the Marvel struct as needed
var scaler = Marvel()
scaler.heroName = "Scaler"
scaler.realName = "Michael"
scaler.superPower = "Size manipulation"
scaler.age = 25
scaler.displayInfo()

// with init structure

struct DC {
    var heroName: String
    var realName: String
    var superPower: String 
    var age: Int 

    // init is defined here it is used to initialize the properties of the struct when a new instance is created. (constructor) 
    init(heroName: String, realName: String, superPower: String, age: Int) {
        self.heroName = heroName
        self.realName = realName
        self.superPower = superPower
        self.age = age
    }

    func displayInfo() {
        print("Hero Name: \(heroName)")
        print("Real Name: \(realName)")
        print("Super Power: \(superPower)")
        print("Age: \(age)")
    }
}
let batman = DC(heroName: "Batman", realName: "Bruce Wayne", superPower: "Genius-level intellect, peak human physical condition, martial arts skills", age: 42)
batman.displayInfo()

// struct vs class
struct StructExample {
    var value: Int
}
class ClassExample {
    var value: Int
    init(value: Int) {
        self.value = value
    }
}
var struct1 = StructExample(value: 10)
var struct2 = struct1
struct2.value = 20
print("Struct Example - struct1 value: \(struct1.value), struct2 value: \(struct2.value)") // struct1 value: 10, struct2 value: 20
var class1 = ClassExample(value: 10)
var class2 = class1
class2.value = 20
print("Class Example - class1 value: \(class1.value), class2 value: \(class2.value)") // class1 value: 20, class2 value: 20