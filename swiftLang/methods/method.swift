// methods

class SuperHero {
    var name: String = "";
    func heroName(str: String) {
        // print("Hello, I am \(name)");
        name += str;
        name += " ";
        print(name)
    }
    
}

// init ------ 
class Villain {
    var name: String;
    
    init(name: String) {
        self.name = name;
    }
    
    func villainName() {
        print("Hello, I am \(name)");
    }
}

struct Modify {
    var number: Int;
    
    // mutating method to modify struct property like 'number' 
    mutating func changeNumber(num: Int) {
        number += num;
    } 
    
}

enum Heros {
    case ironman, captainAmerica, thor;
    
    func heroPower() {
        switch self {
            case .ironman:
                print("Genius, Billionaire, Playboy, Philanthropist");
            case .captainAmerica:
                print("Super Soldier");
            case .thor:
                print("God of Thunder");
        }
    }
}
// Usage
let hero = SuperHero();
hero.heroName(str: "Spider-Man");
hero.heroName(str: "spider-man");
let villain = Villain(name: "Loki");
villain.villainName();
var modify = Modify(number: 10);
modify.changeNumber(num: 5);
print("Modified number is \(modify.number)");
let heroEnum = Heros.thor;
heroEnum.heroPower();
// Output:
// Spider-Man
// spider-man
// Hello, I am Loki
// Modified number is 15
// God of Thunder