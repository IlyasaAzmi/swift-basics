import UIKit

var str = "Hello, playground"

var myDict = ["blue" : "water", "green" : "land"]

myDict["blue"]

myDict["red"] = "bridge"

print(myDict)

print(myDict["blue"]!)

myDict["blue"] = "ocean"

print(myDict)

myDict.removeValue(forKey: "red")

myDict.count


//ternary concept
let num1 = 3
let num2 = 5
var max = num1 > num2 ? num1 : num2


//asignmnet operator
let b = 10
var a = 5
a = b

let (x, y) = (1, 2)
print(x)
print(y)

func greet(name: String, surname: String) {
    print("Greetings \(name) \(surname)")
}

let myName = "Ilyasa"
let mySurname = "Azmi"

greet(name: myName, surname: mySurname)

let nameDictionary: [String: String] = [
    "name": "George",
    "origin": "Jakarta",
    "wife": "Steva"
]

//Simple Values
var myVariable = 42
myVariable = 50
let myConstant = 42

let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70

let explicitFloat: Float = 4

let label = "The string width "
let width = 94
let widthLabel = label + String(width)

let apples = 4
let oranges = 5
let appleSummary = "I have \(apples) apples"
let fruitSummary = "I have \(apples + oranges) fruits"

let result = 7.5
let name = "Ronaldo"
let resultName = "\(name) has a score \(result) on passing"

let quotation = """
I said "I have \(apples) apples."
And then I said "I have \(apples + oranges)
pieces of fruit."
"""

var shoppingList = ["catfish", "water", "tulips"]
shoppingList[1] = "bottle of water"

var occupations = [
    "Malcom":"Captain",
    "Keylee":"Mechanic",
]

occupations["Jayne"] = "Public Relations"

shoppingList.append("blue paint")
print(shoppingList)

let emptyArray = [String]()
let emptyDictionary = [String: Float]()


//Control Flow
let individualScore = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScore {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(teamScore)

var optionalString: String? = "Hello"
print(optionalString == nil)

var optionalName: String? = "John Applessed"
//var optionalName: String? = nil
var greeting = "Hello!"
if let name = optionalName{
    greeting = "Hello \(name)"
} else {
    greeting = "Heelo false"
}

let nickName: String? = nil
let fullName: String = "John Apples"
let informalGreeting = "Hi \(nickName ?? fullName)"


let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log")
case "cucumber", "watercress":
    print("That would make a good tes sandwhich")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x) ? ")
default:
    print("Everything tastes good in soup")
}

let interestingNumbers = [
    "Prime": [2,3,5,7,11,13],
    "Fibonacci":[1,1,2,3,5,8],
    "Square":[1,4,9,16,25, 70],
]

var largest = 0
for  (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
print(largest)


//while
var n = 2
while n < 100 {
    n *= 2
}
print(n)

var m = 2
repeat {
    m *= 2
}while m < 100
print(m)

//for
var total = 0
for i in 0..<4 {
    total += i
}
print(total)

//Functions and closures
func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)."
}
greet(person: "Bob", day: "Tuesday")

func greet2(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)."
}
greet2("John", on: "Wednesday")

func calculateStatistics(scores: [Int]) ->
    (min: Int , max: Int, sum: Int) {
        var min = scores[0]
        var max = scores[0]
        var sum = 0
        
        for score in scores {
            if score > max {
                max = score
            } else if score < min {
                min = score
            }
            
            sum += score
        }
        
        return (min, max, sum)
}

let statistics = calculateStatistics(scores: [5,3,100,3,9])
print(statistics.sum)
print(statistics.2)

//Nested functions
func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
returnFifteen()

func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7)

func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanThen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20,19,7,12]
hasAnyMatches(list: numbers, condition: lessThanThen)

numbers.map({ (number: Int) -> Int in
    let result = 3 * number
    return result
})

let mappedNumbers = numbers.map({ number in 3 * number})
print(mappedNumbers)

let sortedNumbers = numbers.sorted { $0 > $1 }
print(sortedNumbers)

//Obejct and Classes
class Shape{
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides"
    }
}

var shape = Shape()
shape.numberOfSides = 7
var shapeDescription = shape.simpleDescription()

class NamedShape{
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String){
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides"
    }
}

class Square: NamedShape {
    var sideLength: Double
    
    init(sideLength: Double, name: String){
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A aquare with sides of length \(sideLength)."
    }
}

let test = Square(sideLength: 5.2, name: "my test square")
test.area()
test.simpleDescription()

class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0
    
    init(sideLength: Double, name: String ) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
    }
    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)."
    }
}

var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
print(triangle.perimeter)
triangle.perimeter = 9.9
print(triangle.sideLength)

class TriangleAndSquare {
    var triangle: EquilateralTriangle {
        willSet {
            square.sideLength = newValue.sideLength
        }
    }
    var square: Square {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }
    init(size: Double, name: String){
        square = Square(sideLength: size, name: name)
        triangle = EquilateralTriangle(sideLength: size, name: name)
    }
}

var triangleAndSquare = TriangleAndSquare(size:10, name: "anither test shape")
print(triangleAndSquare.square.sideLength)
print(triangleAndSquare.triangle.sideLength)

triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
print(triangleAndSquare.triangle.sideLength)

let optionalSquare: Square? = Square(sideLength: 2.5, name: "optional square")
let sideLength = optionalSquare?.sideLength
