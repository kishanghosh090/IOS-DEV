// inheritance in Swift

class Heros {
    var name: String
    var power: String

    init(name: String, power: String) {
        self.name = name
        self.power = power
    }

    func displayInfo() {
        print("Hero Name: \(name), Power: \(power)")
    }
    
}

class SuperHero: Heros {
    var alias: String

    init(name: String, power: String, alias: String) {
        self.alias = alias
        super.init(name: name, power: power)
    }

    override func displayInfo() {
        print("Hero Name: \(name), Power: \(power), Alias: \(alias)")
    }
}

class Avenger {

    func partName() {
        print("the avengers (Super class)")
    }
}

class avengers2: Avenger {
    override func partName() {
        print("the avengers 2 (sub class)")
    }
    
}
let hero1 = Heros(name: "Clark Kent", power: "Super Strength")
hero1.displayInfo()
let hero2 = SuperHero(name: "Bruce Wayne", power: "High Intelligence", alias: "Batman")
hero2.displayInfo()
let avenger1 = Avenger()
avenger1.partName()
let avenger2 = avengers2()
avenger2.partName()