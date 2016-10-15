// Comment

/*
 Multiline Comment
 */

import UIKit
import Darwin

// Variable names must start with a letter and can contain most any unicode
// character except whitespace, mathematical symbols, arrows

// Swift uses type inference to guess the data type if it isn't provided
// It assumes this is a string and won't except any other value type
var str = "Hello, playground"

// Define a constant
let pi = 3.141592

// Prints a string along with the variable value using string interpolation
print("pi is equal to \(pi)")

// You can define the data type with a type annotation
let numberOfSteps: Int = 450

// ---------- DATA TYPES ----------

// Int : Integers
// Double / Float : Decimal Numbers
// String : Characters
// Bool : true or false

// The maximum Int on a 64 bit computer
let maxInt: Int = 9223372036854775807

let maxUnsignedInt: UInt64 = UInt64.max

// The maximum Float
print("Max Float : \(FLT_MAX)")

// The maximum Double
print("Max Float : \(DBL_MAX)")

// Floats are accurate to 6 digits
let floatPrecision: Float = 1.999999 + 0.0000005
print("Float Precision: ", floatPrecision)

//Doubles are precise to 15 digits
let doublePrecision: Double = 1.99999999999999 + 0.000000000000005
print("Double Precision: ", doublePrecision)

// Booleans are either true or false
let isOver18 = true

// Create a String
let myName = "Derek"

// Combine or concatenate strings
let statement = "My name is " + myName

// Strings are immutable when you use let
// myName = "Paul"
var paulName = "Paul"
paulName = "Fred"


// ---------- CASTING ----------

// Cast a Float into an Int
print("I'm an Int now \(Int(floatPrecision))")

// Cast an Int into a Float
print("I'm a Float now \(Float(maxInt))")

// Cast an Int into a Bool
print("I'm a Bool now \(Bool(maxInt))")

// Turn a String into an Int
let myAge = "40"
let myAgeInt = Int(myAge)

// Turn a String into a Float
let myHeight = "6.25"
let myHeightFloat = (myHeight as NSString).floatValue

// ---------- MATH ----------
print("5 + 3 =  \(5 + 3)")
print("5 - 3 =  \(5 - 3)")
print("5 * 3 =  \(5 * 3)")
print("5 / 3 =  \(5 / 3)")
print("5.3 % 3 =  \(5.3 % 3)") // Remainder Operator

// Shorthand Increment and Decrement
var num: Int = 1

print("num++ = \(num += 1)")
print("++num = \(++num)")

// Compound Assignment
num += 5
print("num += 5  \(num)")

num -= 5
print("num -= 5  \(num)")

num *= 5
print("num *= 5  \(num)")

num /= 5
print("num /= 5  \(num)")

num %= 5
print("num %= 5  \(num)")

// Generate random number between 0 and 10
print("Random Number : \(arc4random() % 11)")

// ---------- CONDITIONALS ----------
let age: Int = 13

// Conditional Operators > < >= <= == !=
// Logical Operators && || !

if age < 16 {
    print("You can go to school")
} else if (age >= 16) && (age < 18){
    print("You can drive")
} else {
    print("You can vote")
}

if (age < 14) || (age > 67) {
    print("You shouldn't work")
}

print("!true = \(!true)")

// Ternary Operator
var isLegalToVote: Bool = (age > 18) ? true : false

// Switch Statement
// Works with Ints, Doubles, Floats, Booleans, Strings and more
// By default after a match is made execution doesn't fall to the next
// case

let ingredient = "pinto beans"

switch ingredient {
case "pasta", "tomato":
    print("How about spaghetti")
// fallthrough : Would check the next case if you want
case "potato":
    print("How about a baked potato")
case "pinto beans":
    print("How about a burrito")
default:
    print("A glass of water is nice")
}

// You can use a Range in switch
let testScore: Int = 89

switch testScore {
case 93...100:
    print("You got an A")
case 85...92:
    print("You got a B")
case 77...84:
    print("You got a C")
case 69...76:
    print("You got a D")
default:
    print("You got an F")
}

// ---------- ARRAYS ----------

// Every item in an array must be of the same type and
// can be Ints, Floats, Doubles, Strings, Bools, Structs

let friends: Array<String> = ["Bob", "Fred", "Paul"]

let randNums = [3, 6, 9]

// Values are referenced using indexes starting at 0
print("Random Num 1 : \(randNums[0])")

// Create empty array
var groceries = [String]()

// Add items to array
groceries.append("Tomato")
groceries.append("Potato")
groceries.append("Beans")

// How many items in array
print("Number of groceries : \(groceries.count)")

// Insert an item at an index
groceries.insert("Flour", atIndex: 1)
print(groceries)

// Replace an item
groceries[1] = "Whole Wheat Flour"
print(groceries)

// Remove an item at index
groceries.removeAtIndex(0)
print(groceries)

// Remove item by value
if let match = groceries.indexOf("Beans") {
    groceries.removeAtIndex(match)
}
print(groceries)

// Sort from lowest to highest
groceries = groceries.sort(<)
print(groceries)

// Reverse array
groceries.reverse()

// Multidimensional Array
var array: [[Int]] = [[00,10,20],[01,11,21]]

for column in array {
    for row in column {
        print("\(row) : \(column)")
    }
}

print(array[1][0])


// ---------- DICTIONARIES ----------
// Use key value pairs for storing
// The key can be an Int, Double, String, Enum

// Create a dictionary
var superHeroes = [String : String]()

// Add value associated with key in brackets
superHeroes["Superman"] = "Clark Kent"

// Number of items
print("Number of Heroes : \(superHeroes.count)")

// Remove using the key
superHeroes.removeValueForKey("Superman")

// ---------- TUPLES ----------
// Tuples are normally used when you want to return
// many values from a function

var stats = (height:6.25, weight:179, name:"Derek")
print("Height : \(stats.height)")
print("Weight : \(stats.weight)")
print("Name : \(stats.name)")

// ---------- LOOPING ----------

for var i: Int = 1; i <= 10; i += 1 {
    
    // If is odd skip the rest of the code in the loop
    if Bool(i % 2){
        continue
    }
    
    // If i == 10 jump out of the loop completely
    if i == 10 {
        break
    }
    
    print("\(i)")
}

// For In Loop with Range
for j in -5...5 {
    print("\(j)")
}

var quote = "I dream of a better tomorrow, where chickens can cross the road and not be questioned about their motives."

// You can cycle through strings
var numOfAs = 0
for singleChar in Array(quote.characters) {
    if singleChar == "a"{
        numOfAs += 1
    }
}
print("Number of a's \(numOfAs)")

// Cycle through array with for in

let people: Array<String> = ["Bob", "Fred", "Paul"]

for person in people {
    print(person)
}

// Cycle through a Dictionary

let heroes = ["Superman" : "Clark Kent",
              "Flash" : "Barry Allen", "Batman" : "Bruce Wayne"]

for (pubName, sIdent) in heroes {
    print("\(pubName) is \(sIdent)")
}

// While Loop

var k = 0

while k <= 10 {
    print(k)
    k += 1
}

// Do While Loop

var l = 0

repeat {
    print(l)
    l += 1
} while l <= 10

// ---------- FUNCTIONS ----------

// Function receives no attributes and returns nothing
func sayHello(){
    print("Hello")
}

sayHello()

// Function receives an attribute
func sayHello2(name: String){
    print("Hello \(name)")
}

sayHello2("Derek")

// Receives 2 attributes and returns an Int
// Attributes are given default values
func getSum(num1: Int = 1, num2: Int = 1) -> Int {
    return num1 + num2
}

print("5 + 6 = \(getSum(5, num2: 6))")

// Variadic parameters have an unknown number of attributes
func getSum2(nums: Int...) -> Int {
    
    var sum: Int = 0
    
    for num in nums{
        sum += num
    }
    return sum
}

print("Sum : \(getSum2(1,2,3,4,5))")

// How to effect variable values outside of the function
var str1: String = "happy"
var str2: String = "sad"

func makeUppercase(inout str1: String, inout str2: String){
    str1 = str1.uppercaseString
    str2 = str2.uppercaseString
}

makeUppercase(&str1, str2: &str2)

print(str1 + " " + str2)

// Return multiple types from function
func getMult(number: Int) -> (x2: Int, x3: Int){
    let x2 = number * 2
    let x3 = number * 3
    
    return (x2, x3)
}

var answer = getMult(50)

print(answer.x2)
print(answer.x3)

// Returning functions
// Receive an unknown number of Ints and return a Double
func average(nums: Int...) -> Double{
    var sum = 0
    
    for num in nums {
        sum += num
    }
    
    return Double(sum) / Double(nums.count)
}

func sum(nums: Int...) -> Double{
    var sum = 0
    
    for num in nums {
        sum += num
    }
    
    return Double(sum)
}

func doMath (mathOption: String) -> (Int...) -> Double{
    if mathOption == "average"{
        return average
    } else {
        return sum
    }
}

var mathFunc = doMath("average")
print(mathFunc(1,2,3,4,5,6))

mathFunc = doMath("sum")
print(mathFunc(1,2,3,4,5,6))

// Return an inner function that receives 2 Ints and
// returns a String
func multiplyIt () -> ((Int, Int) -> String) {
    func multiply(num1: Int, num2: Int) -> (String) {
        
        return "\(num1) * \(num2) = \(num1 * num2)"
    }
    return multiply
}

// Get a reference to a function that you can use to
// execute an inner function
let getValue = multiplyIt()
print(getValue(5, 3))

// ---------- CLOSURES ----------

// A Closure is self contained code like a function
// They differ in that they can be anonymous and have
// no name

// in seperates the header from the body

//{ (param: paramType, param2: paramType) -> returnType in
//    statements
//    return value
//}

// A closure that excepts and returns an Int
var square: (Int) -> (Int) = { num in
    return num * num
}

print("\(square(15))")

// Assign a closure to another variable
var squareCopy = square

print("\(squareCopy(15))")

// No attributes or returns
var sayGoodbye: () -> () = {
    print("Goodbye")
}

sayGoodbye()

// No attributes with return

var sayHappy: () -> (String) = {
    "Happy Birthday"
}

print(sayHappy())

// Reference variables outside the closure

var num3 = 3

var incrementNum = {
    print("num3 : \(++num3)")
}

incrementNum()

// An Array has a map method that excepts a closure that
// performs an action on every item in the array
let numsToSquare = [1,2,3,4,5,6]

let squaredNums = numsToSquare.map {
    (num: Int) -> String in
    "\(num * num)"
}

print(squaredNums)


// ---------- STRUCTS ----------
// You can create custom data types using Structs
// Structs are used when you don't want to inherit and
// you are modeling a simple data structure

struct Runner {
    var name: String
    var milePace: Double
    
    func displayMP() -> String {
        let absPace = Int(self.milePace)
        let prctMin = self.milePace - Double(absPace)
        let seconds = prctMin * 60
        
        return "\(absPace) min : \(seconds) sec"
    }
    
    // A computed property returns versus stores a value
    var marathonTime: Double {
        get {
            return (milePace * 26.2) / 60;
        }
    }
    
    // You can store static constants in a Struct
    static let marathonDist = 26.2;
    
}

let dennisKimetto = Runner(name: "Dennis Kimetto", milePace: 4.68)
let emmanuelMutai = Runner(name: "Emmanuel Mutai", milePace: 4.7)

print("\(dennisKimetto.name) : \(dennisKimetto.displayMP())")

print("\(emmanuelMutai.name) : \(emmanuelMutai.displayMP())")

print("Time to finish marathon : \(dennisKimetto.marathonTime) hours")

// Get a static value without initialization
print("Marathon Distance : \(Runner.marathonDist)")

// ---------- CLASSES ----------

class Animal {
    var name: String = "No Name"
    var height: Double = 0.0
    var weight: Double = 0.0
    var sound: String = "No Sound"
    
    // Assigns default values when an object is created
    // You can have many inits with different attributes
    
    // self is used to refer to attributes of the object
    // that called for this method to execute
    init(name: String, height: Double, weight: Double, sound: String){
        self.name = name
        self.height = height
        self.weight = weight
        self.sound = sound
    }
    
    func getInfo(){
        print("\(self.name) is \(self.height) cms tall and weighs \(self.weight) kgs and likes to say \(self.sound)")
    }
    
    // You can create overloaded methods if you change
    // the attributes
    func getSum(num1: Int, num2: Int) -> Int{
        return num1 + num2
    }
    
    func getSum(num1: Double, num2: Double) -> Double{
        return num1 + num2
    }
    
}

var rover = Animal(name: "Rover", height: 38, weight: 12.7, sound: "Ruff")

rover.getInfo()


// Inheritance
class Dog: Animal{
    
    // Dog can extend or override methods in Animal
    // A func marked as final can't be overridden by
    // subclasses
    
    final func digHole(){
        print("\(self.name) digs a hole")
    }
    
    override func getInfo(){
        
        // You can call a method in the superclass
        super.getInfo()
        print("and dig holes")
    }
    
}

var spot = Dog(name: "Spot", height: 38, weight: 12.7, sound: "Ruff")

// Dog inherits everything in Animal
spot.getInfo()

spot.digHole()

// You can pass any subclass type and the right method
// is automatically called
func printGetInfo(animal: Animal){
    animal.getInfo()
}

printGetInfo(rover)
printGetInfo(spot)


// You can set and get values with the dot operator
spot.name = "Doug"
print(spot.name)

// Testing overloaded methods
print("2 + 5 = \(spot.getSum(2,num2: 5))")
print("2.2 + 5.6 = \(spot.getSum(2.2,num2: 5.6))")

// Check the class type
print("Is Spot a Dog : \(spot is Animal)")

// ---------- PROTOCOLS ----------

// Protocols are like interfaces in other languages
// When you adopt a protocol you agree to define the
// behavior it describes

protocol Flyable {
    // Define if getters and setters are available
    // Put optional before var if you want it to be
    // optional
    var flies: Bool { get set }
    
    // You define the header for a func but nothing else
    func fly(distMiles: Double) -> String
    
}

// Adopt multiple protocols class ClassName : prot1, prot2
class Vehicle : Flyable{
    var flies: Bool = false
    var name: String = "No Name"
    
    func fly(distMiles: Double) -> String {
        if (self.flies){
            return "\(self.name) flies \(distMiles) miles"
        } else {
            return "\(self.name) can't fly"
        }
    }
}

var fordF150 = Vehicle()
fordF150.name = "Ford F-150"
fordF150.flies = false
print(fordF150.fly(10))

// ---------- EXTENSIONS ----------
// Extensions provide a way to add functionality without
// overidding existing functionality to a type being one
// you create or even Int, Double, String, Array

// Output a String as an array
extension String {
    // Array of characters
    var asArray: [Character]{
        // Create an empty array of characters
        var result = [Character]()
        
        // Cycle through the string and store each
        // character in the array
        for char in Array(self.characters) {
            result.append(char)
        }
        return result
    }
    
    // We can add functions as well
    func letterOccurence(theChar: Character) -> Int{
        var numOfChars = 0
        for letter in Array(self.characters) {
            if letter == theChar{
                numOfChars += 1
            }
        }
        return numOfChars
    }
    
}

var characters = "A Random string".asArray
print(characters)

var numberOfAs: Int = "a Random string".letterOccurence("a")
print("Number of As \(numberOfAs)")

// ---------- GENERICS ----------
// Generics allow you to avoid repetitive code that exists
// because of type requirements

// If we wanted to print anything other then strings
// we'd have to create many of these
func printElements(randStr: String){
    for element in Array(randStr.characters) {
        print("\(element), ")
    }
    print()
}

printElements("A Random String")

// The <T> indicates this is a generic function
// This excepts an array of anything now

func printAnyArray<T>(anything: [T]){
    for element in anything{
        print("\(element), ")
    }
    print()
}

printAnyArray(["Paul", "Jake"])
printAnyArray([1, 2, 3])

// Now we can print out any sequence type
func printAnySeq<T: SequenceType>(anything: T){
    for element in anything{
        print("\(element), ")
    }
    print()
}

printAnySeq(Array("A random string".characters)
)

// Equatable allows you to evaluate for equality
func areTheyEqual<T: Equatable>(val1: T, val2: T) -> Bool {
    return val1 == val2
}

print(areTheyEqual(1,val2: "b"))

// Comparable allows you to compare any data type
func compareThem<T: Comparable>(val1: T, val2: T) -> Bool {
    return val1 < val2
}

print(compareThem("a",val2: "b"))

// ---------- ENUMS ----------
// Enums structure related values and are very useful when
// you are working with a limited number of options

// Swift enums are not integer based like other languages
// They can store multiple data types

// If you want to map an enum to a value you must define
// the data type and a value unless it is Int
enum Color: Int {
    case blue // You could also: case blue = 1
    case green
    case red
    case purple
    case yellow
    
    // Set default value to blue
    init () {
        self = .blue
    }
    
    // Create a function that returns the color
    func getData() -> String {
        switch(self){
        case .blue: return "Blue"
        case .green: return "Green"
        case .red: return "Red"
        case .purple: return "Purple"
        case .yellow: return "Yellow"
        default: return "Not Found"
        }
    }
}

var someColor = Color()

print(someColor.rawValue)

var favColor = Color.purple

// Access the value associated
print(favColor.rawValue)

if(favColor == Color.purple){
    print("Favorite Color is Purple")
}

// Call an enum function
print(favColor.getData())
