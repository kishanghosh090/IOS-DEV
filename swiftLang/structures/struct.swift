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