import Cocoa

var str = "Hello, playground"

// Arrays let you store multiple values as one value.  For example:
let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"
// This line creates the array.
let beatles = [john, paul, george, ringo]

// Trying to call a specific value in an array can be done using offset values.  For example, trying to find Paul can be done like.  Positions are calculated from left to right, starting from 0.
// Tryinig to call a value that doesn't exist will crash Swift
beatles[1]

// Type annotations can be written in an array using these brackets: [String], [Int], [Double], and [Bool].  For example:
let Names: [String] = [john, paul, george, ringo]
// Doubles can't hold numbers such as the one below, while they can hold fractional values.  Integers can hold the number shown below exactly, because they can't hold fractional values.
let double: Double = 90000000000000000000001
let int: Int = 9000000000000000001
// Can't add doubles and integers together because the value difference, and the way the value is held is different.  Can cause issues, so Swift doesn't do it.

// Divison remainder sign %.
// If the value isn't exactly divisible, then the remainder sign takes the leftovers and uses it to calculate how much was left over.
let weeks = 465 / 7
let days = 465 % 7
print("There are \(weeks) and \(days) left until this day")

// If the goal is to see if a number divides into another, this is a faster way.
let number = 465
let isMultiple = number.isMultiple(of: 7)

// Operation overloading is that Swift uses operations differently depending on what values are being used.
// Integers
let meaningOfLife = 42
let doubleMeaning = 42 + 42

// Adds strings too
let faker = "Fakers gonna"
let action = faker + "fake"

// Even arrays
let firstHalf = [john, paul]
let secondHalf = [george, ringo]
let beatle = firstHalf + secondHalf

// Compound operators
// An operator along with an equals sign, that does an operation, and reassigns the result back to the variable.
// Using integers
var score = 95
score -= 5

// Strings
var quote = "The rain in Spain mainly falls on the"
quote += "Spaniards"

// Comparison operators
let firstScore = 4
let secondScore = 6

// == checks for equality, and != checks for not equal or inequality.
firstScore == secondScore
firstScore != secondScore

// Using <, >, >=, or <= checks for greater than, less than, or greater/less or equal to.
firstScore > secondScore

// This also works with strings, as they have a natural alphabetical order.
"Taylor" <= "Swift"

// Conditions

let firstCard = 11
let secondCard = 10
// If the condition is true, then the code within { and } will be run.
if firstCard + secondCard == 21 {
    print("Blackjack!")
}
// You can use else and else if to chain results.

// You must have one if, and etiher one or no else.  You can have as many else if as you want.
if firstCard + secondCard == 2 {
    print("Aces – lucky!")
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}

// Combining conditions.

// The codes are && pronouced and, and || pronounced or.

let age1 = 12
let age2 = 21
// If both ages are over 18, then the code will be run.
if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}
// If at least one is over 18, then the code will be run.
if age1 > 18 || age2 > 18 {
    print("At least one is over 18")
}
// Both && and || can be used more than once in a condition.

// Inserting parentheses within the multiple conditions tells Swift how to interpret it.

// Ternary operator
// It checks for a condition in the first value, and if true, it returns the second value, but if false, uses the third value.
let card1 = 11
let card2 = 10
print(card1 == card2 ? "Cards are the same" : "Cards are different")
// This can be written in the more regular way as well
if card1 == card2 {
    print("Cards are the same")
} else {
    print("Cards are different")
}

// Switch Statements

let weather = "sunny"

// Allows us to give many results depending on the code written.
switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    // Fallthrough is used when you want the code to run from that case, and the one below it.
    fallthrough
default:
    print("Enjoy your day!")
}
// Use switch when you have an exhaustive (finite) amount of cases that you know about.  Switch will read a value only once, while using if will read it multiple times.


// Range operators.
//  ..< creates a range up to but not including the last value.  ... creates a range up to and including the last value.
let scores = 85

switch scores {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}
