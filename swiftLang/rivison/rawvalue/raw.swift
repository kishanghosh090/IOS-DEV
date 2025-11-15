import Foundation

// raw value enum only available for Int, String, Float, Double
enum PaperSize: String {
    case a4 
    case a5
    case legal
}
var myPaperSize: PaperSize = .legal

print("My paper size is \(myPaperSize).")
print("Raw value of my paper size is \(myPaperSize.rawValue).")
