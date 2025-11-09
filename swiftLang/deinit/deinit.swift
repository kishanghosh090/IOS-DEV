class Hero {

    var name: String = "batman"

    init() {
        print("\(name) is born")
    }

    func toolBelt()  {
        print("\(name) has a tool belt")
    }

    deinit {
        print("\(name) is gone")
    }
}
let hero1 = Hero()
hero1.toolBelt()
for _ in 1...3 {
    let hero = Hero()
    hero.toolBelt()
}

var array: Array<Int> = []

for i in 1...3 {
    array.append(i)
}
print(array)
hero1.toolBelt()
// At the end of the program, hero1 will be deinitialized
// ARC will take care of it
print("End of program")

