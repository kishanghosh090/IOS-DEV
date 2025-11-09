// initialization (init) example

class Concatinate {

    var fname: String = "captain"
    var lname: String = "america"

    var fullname: String 

    init() {
        self.fullname = self.fname + " " + self.lname
    }
}
var obj = Concatinate()
print("Full Name \(obj.fullname)")  // Output: captain america= ""

class Marvel {
    var hero: String
    var villain: String

    init(hero: String, villain: String) {
        self.hero = hero
        self.villain = villain
    }
    init(hero: String) {
        self.hero = hero
        self.villain = "unknown"
    }
}

var obj1 = Marvel(hero: "ironman", villain: "thanos")
print("Hero: \(obj1.hero), Villain: \(obj1.villain)")

var obj2 = Marvel(hero: "spiderman")
print("Hero: \(obj2.hero), Villain: \(obj2.villain)")