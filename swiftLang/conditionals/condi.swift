var accountBalance = 19
if accountBalance > 10{
    print("triggered")
}else {
    print("not trigged")
}



var courseName:String?

var isLoggedIn: Bool?

if let getCourseName = courseName{
    print(getCourseName)
}

var courseWithPrice: [String: Int] = [
    "react js": 199,
    "angular js": 299
]
                // if isLoggedIn -> nil if{}block not execute is not nil sotre the varible vale and execute the if{} block
if let user = isLoggedIn, let reactPrice = courseWithPrice["react js"]{
    print("user is \(user) and price is \(reactPrice)")
}