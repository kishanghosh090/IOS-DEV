// Swift Array methods demo
// Run this file with: swift Arrays.swift

import Foundation

print("=== Swift Array methods demo ===\n")

// Create arrays
var myChais: [String] = ["elychi tea", "ginger"]
print("initial myChais:", myChais)

var teas: Array<String> = Array<String>()
print("initial teas (empty):", teas)

// append / append(contentsOf:)
teas.append("green tea")
teas.append("black tea")
teas.append(contentsOf: ["oolong", "white tea"])
print("after append & append(contentsOf):", teas)

// insert
teas.insert("matcha", at: 1)
print("after insert at index 1:", teas)

// count, isEmpty
print("count of teas:", teas.count)
print("teas isEmpty:", teas.isEmpty)

// contains, firstIndex
print("contains 'oolong'?:", teas.contains("oolong"))
if let idx = teas.firstIndex(of: "black tea") {
	print("firstIndex of 'black tea':", idx)
} else {
	print("'black tea' not found")
}

// remove(at:), removeFirst(), removeLast(), popLast()
let removed = teas.remove(at: 2)
print("removed (at 2):", removed)
print("teas after remove(at:):", teas)

let first = teas.removeFirst()
print("removed first:", first)
print("teas after removeFirst():", teas)

let last = teas.removeLast()
print("removed last:", last)
print("teas after removeLast():", teas)

if let popped = teas.popLast() {
	print("popLast returned:", popped)
} else {
	print("popLast returned nil (empty)")
}
print("teas after popLast:", teas)

// append more and then replace range
teas.append(contentsOf: ["herbal", "chai", "pu-erh"]) 
print("teas now:", teas)

// replaceSubrange
teas.replaceSubrange(1...2, with: ["lemongrass", "peppermint"]) 
print("after replaceSubrange(1...2):", teas)

// removeAll
var temp = teas
temp.removeAll(where: { $0.starts(with: "p") })
print("temp after removeAll(where: starts with 'p'):", temp)

// map, filter, reduce
let lengths = myChais.map { $0.count }
print("lengths of myChais items:", lengths)

let longChais = myChais.filter { $0.count > 6 }
print("myChais items with length>6:", longChais)

let combined = myChais.reduce("") { partial, next in
	partial.isEmpty ? next : partial + ", " + next
}
print("combined myChais via reduce:", combined)

// sorted (non-mutating) and sort() (mutating)
let numbers = [5, 2, 9, 1, 3]
print("numbers:", numbers)
print("numbers.sorted():", numbers.sorted())

var mutableNumbers = numbers
mutableNumbers.sort()
print("mutableNumbers after sort():", mutableNumbers)

// reversed / reversed() -> returns ReversedCollection; convert to Array
print("numbers.reversed() as array:", Array(numbers.reversed()))

// joined (for array of strings) and joined(separator:)
let parts = ["Swift", "is", "fun"]
print("joined parts with space:", parts.joined(separator: " "))

// flatMap / compactMap
let nested: [[Int]] = [[1,2], [], [3,4,5]]
print("nested:", nested)
print("nested.flatMap -> flattened:", nested.flatMap { $0 })

let maybeInts: [String?] = ["1", nil, "3", "notAnInt"]
let compacted = maybeInts.compactMap { $0 }
print("compactMap (remove nils) from [String?]:", compacted)

// compactMap with Int conversion
let intsFromStrings = maybeInts.compactMap { s -> Int? in
	guard let s = s else { return nil }
	return Int(s)
}
print("intsFromStrings (compactMap->Int):", intsFromStrings)

// split
let sentence = "apple,banana,,cherry"
let pieces = sentence.split(separator: ",")
print("split pieces:", pieces)

// prefix, suffix
let firstTwo = numbers.prefix(2)
let lastTwo = numbers.suffix(2)
print("firstTwo:", Array(firstTwo), "lastTwo:", Array(lastTwo))

// enumerated
for (i, value) in numbers.enumerated() {
	print("enumerated index:\(i) value:\(value)")
}

// zip
let letters = ["a", "b", "c"]
let zipped = Array(zip(letters, [1,2,3,4]))
print("zipped letters with numbers:", zipped)

// slice (Array slice -> convert back to Array if needed)
let slice = numbers[1...3]
print("slice numbers[1...3]:", Array(slice))

// unique using Set (order not guaranteed). To keep order, use ordered filtering.
let duplicates = [1,2,3,2,1,4]
let uniquesUnordered = Set(duplicates)
print("uniques (unordered via Set):", uniquesUnordered)

// uniques preserving order
var seen = Set<Int>()
let uniquesOrdered = duplicates.filter { seen.insert($0).inserted }
print("uniques ordered:", uniquesOrdered)

// shuffle and shuffled
var shuffleArr = [1,2,3,4,5]
print("shuffleArr before shuffle():", shuffleArr)
shuffleArr.shuffle()
print("shuffleArr after shuffle():", shuffleArr)
print("shuffled(copy):", [1,2,3,4,5].shuffled())

// swapAt
var swapArr = ["first", "second", "third"]
swapArr.swapAt(0, 2)
print("swapArr after swapAt(0,2):", swapArr)

// insert(contentsOf: at:)
var animals = ["cat", "dog"]
animals.insert(contentsOf: ["rabbit", "hamster"], at: 1)
print("animals after insert(contentsOf: at:):", animals)

// replace subrange example already shown; demonstrate replacing with different count
animals.replaceSubrange(0..<2, with: ["wolf"])
print("animals after replaceSubrange(0..<2) with ['wolf']:", animals)

// removeAll keeping capacity false/true
var toClear = [1,2,3]
toClear.removeAll(keepingCapacity: true)
print("toClear after removeAll(keepingCapacity:true):", toClear)

// Examples complete
print("\n=== End of Array methods demo ===")
