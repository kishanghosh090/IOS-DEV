// enums

enum Marver {

    case IronMan
    case CaptainAmerica
    case Thor
    case Hulk
    case BlackWidow
    case Hawkeye
}
let hero = Marver.IronMan
print("My favorite hero is \(hero)")

var anotherHero = Marver.Thor

// .Thor can be used because anotherHero is already of type Marver
if anotherHero == .Thor {
    print("Another hero is Thor")
}

enum Planet: Int {
    case Mercury = 1
    case Venus = 2
    case Earth 
    case Mars 
    case Jupiter
    case Saturn 
    case Uranus
    case Neptune
}
let earthOrder = Planet.Earth.rawValue
print("Earth is the \(earthOrder) planet from the Sun.")

enum Barcode {
    case UPCA(Int, Int, Int, Int)
    case QRCode(String)
}
var productBarcode = Barcode.UPCA(8, 85909, 51226, 3)
// productBarcode = .QRCode("ABCDEFGHIJKLMNOP")
switch productBarcode {
case .UPCA(let numberSystem, let manufacturer, let product, let check):
    print("UPC-A: \(numberSystem), \(manufacturer), \(product), \(check).")
case .QRCode(let productCode):
    print("QR code: \(productCode).")
}

enum MarvelMovies {

    case Name(String)
    case ReleaseYear(Int)
}

var movie = MarvelMovies.Name("Avengers: Endgame")
var releaseYear = MarvelMovies.ReleaseYear(2019)
switch movie {
case .Name(let name):
    print("Movie Name: \(name)")
case .ReleaseYear(let year):
    print("Release Year: \(year)")
}


// recursive enums
indirect enum ArithmeticExpression {
    case number(Int)
    case addition(ArithmeticExpression, ArithmeticExpression)
    case multiplication(ArithmeticExpression, ArithmeticExpression)
}

let five = ArithmeticExpression.number(5)
let four = ArithmeticExpression.number(4)
let sum = ArithmeticExpression.addition(five, four)
let product = ArithmeticExpression.multiplication(sum, ArithmeticExpression.number(2))
func evaluate(_ expression: ArithmeticExpression) -> Int {
    switch expression {
    case .number(let value):
        return value
    case .addition(let left, let right):
        return evaluate(left) + evaluate(right)
    case .multiplication(let left, let right):
        return evaluate(left) * evaluate(right)
    }
}
print("The result of the expression is \(evaluate(product))")