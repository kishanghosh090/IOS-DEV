// var accountBalance = 19
// if accountBalance > 10{
//     print("triggered")
// }else {
//     print("not trigged")
// }



// var courseName:String?

// var isLoggedIn: Bool?

// if let getCourseName = courseName{
//     print(getCourseName)
// }

// var courseWithPrice: [String: Int] = [
//     "react js": 199,
//     "angular js": 299
// ]
//                 // if isLoggedIn -> nil if{}block not execute is not nil sotre the varible vale and execute the if{} block
// if let user = isLoggedIn, let reactPrice = courseWithPrice["react js"]{
//     print("user is \(user) and price is \(reactPrice)")
// }

// control statement

let marvel = [
    "ironman",
    "hulk",
    "thor",
    "avengers",
]

// for in loops in swift
for hero in marvel {
    print(hero)
}

for index in 1...10{
    print(index)
    
}

let base = 3
let power = 10
var ans = 1

for _ in 1...power {
    ans *= base
}
print(ans)

var i = 1,n = 6

while (i <= n) {
    print(i)
    i += 1
    
}

switch i {
case 1:
    print(1)
case 2:
    print(2)
case 3:
    print(3)
case 4:
    print(4)
case 5:
    print(5)
case 6:
    print(6)
case 7:
    print(7)
case 8:
    print(8)  
default:
    print("default")
    
}

