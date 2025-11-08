struct Marvel {
    var heroName: String
    var realName: String
    var superPower: String 
    var age: Int = 0 // Default value

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