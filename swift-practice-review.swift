import Foundation

// Constant and Variables

let name = "Arno"
var job = "Estimator"
job = "Programmer"

print(job)


// String

let actress = "Jessica Alba"

let quote = "Jensen Anckles hates \(actress) because she had a bad \"attitude\"."

let description = """
Multiple 
Lines
In this String
"""

print(description)
print(quote)
print("The quote above contains \"Mutiple\": \(description.contains("Multiple")). It has \(description.count) characters.")


// Integer

let score = 10
let highScore = score + 10
let halvedScore = score / 2
print("Score: \(score), highScore: \(highScore), halvedScore: \(halvedScore)")

var counter = 10
print(counter)
counter += 5
print(counter)

var randomNumber = Int.random(in: 1...100)
print("Random #: \(randomNumber)")
print("Which is a multiple of 2?: \(randomNumber.isMultiple(of: 2) ? "Yes": "No")")
print("Which is a multiple of 3?: \(randomNumber.isMultiple(of: 3) ? "Yes": "No")")
print("Which is a multiple of 5?: \(randomNumber.isMultiple(of: 5) ? "Yes": "No")")
print("Which is a multiple of 7?: \(randomNumber.isMultiple(of: 7) ? "Yes": "No")")


// Double

let someNumber = 3
let thatNumber = 3.0
print(someNumber is Int)
print(someNumber is Double)
print(thatNumber is Int)
print(thatNumber is Double)


// String interporation

let currentNoise = "baby"
print("The neighbor's \(currentNoise) is crying and they aren't doing anything.")


// Arrays
var numberArray = Array(1...4)
let stringArray = ["Jack", "Jill", "Graeme", "Marilyn"]
let doubleArray = [1.0, 2.0, 3.0]

print(numberArray)

numberArray.append(5)
print(numberArray)

var pencilBox = ["pen", "eraser"]
print(pencilBox)
pencilBox += Array(repeating: "pencil", count: 10)
print(pencilBox)
pencilBox = pencilBox.filter{$0 != "pen"}
print(pencilBox)

var wallet = ["5 Dollar Bill", "10 Dollar Bill"]
let moneyOnFloor = ["10 Dollar Bill", "20 Dollar Bill", "50 Dollar Bill"]
print(wallet)
wallet.append(contentsOf: moneyOnFloor)
print(wallet)
print("wallet is a: \(type(of: wallet))")

var allSorts = [Any]()
allSorts.append("Grey")
print(allSorts)
allSorts.append(69)
print(allSorts)

var numbers = Array(1...100)
numbers.removeAll(where: { $0 % 3 == 0 })
print(numbers)
var subNumbers = numbers.filter({$0 < 50})
print(subNumbers)

var colors = ["red", "yellow", "blue", "orange", "purple", "green"]
let primary = colors[0...2]
print(primary)
print(colors)
let secondary = colors[3...]
print(secondary)

numbers = Array(1...10)
print(numbers)
var squareNumbers = numbers.map({$0 * $0})
print(squareNumbers)

var numberOfItemsInBox = Array(repeating: 0, count: 10)
print(numberOfItemsInBox)
numberOfItemsInBox[0...2] = numberOfItemsInBox[0...2].map{$0 + 1}[...]
print(numberOfItemsInBox)

var revenueByQuarter = [6969, 12345, 54321, 1111]
let averageSales = revenueByQuarter.reduce(0, {x, y in x + y}) / revenueByQuarter.count
// let averageSales = revenueByQuarter.reduce(0, +) / revenueByQuarter.count
print(averageSales)


// Sets

var repeatItemArray : [Any] = ["Arno", "Arno", "Arno", 1, 1, 1, "Eddie", "Eddie", "Eddie"]
var someSet = Set<String>()
print(repeatItemArray)
print(someSet)
someSet.insert("Arno")

let someNumbers: Set = Set(Array(1...25))
print(someNumbers)
// for some reason it always prints empty on line 140 here
let someEvenNumbers = Set(stride(from: 2, to: 24, by: 2))
print(someEvenNumbers)


// Dictionary

var rgbColorDict : [String: String] = [:]
rgbColorDict["red"] = "255-0-0"
rgbColorDict["blue"] = "0-0-255"
rgbColorDict["yellow"] = "255-255-0"
print(rgbColorDict)

var storageCount : [String : Int] = ["pencils" : 1, "erasers" : 1, "paper" : 1]
storageCount.updateValue(5, forKey: "pencils")
print(storageCount)

var someListNames = ["Arno", "James", "Judy", "Frank", "Mary", "Catherine", "Belle", "Zoey", "Cristy", "Beatrice", "Aaron"]
var someNamesDict = Dictionary(grouping: someListNames){ $0.first! }
print("someListNames: \(someListNames)")
print("Dictionary: \(someNamesDict)")


// Closures

let makeMeCapital = { (someString : String) -> String in
    return someString.uppercased()
}

print(makeMeCapital("arno"))
var twentyFiveCount : [Int] = [1, 5, 3, 4, 9, 7, 0, 8]
print(twentyFiveCount)
let descending = twentyFiveCount.sorted(by: { n1, n2 in n1 > n2 })
let ascending = twentyFiveCount.sorted(by: { n1, n2 in n1 < n2 })
print(descending)
print(ascending)

let someAddition : (Int, Int) -> Int
someAddition = { $0 + $1 }
print(someAddition(100, 200))
