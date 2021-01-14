import Cocoa


// Variables
var str = "Hello, playground"

// Don't need var the second time, since it was already created the first time.
str = "Goodbye"


// Strings and Integers

var age = 38

// Use _ to notate thousands separators.
var population = 8_000_000

// Strings and integers are different types.  One is text, and another is numbers.


// Multi-line strings

// A line break after a string can be denoted by using three quote buttons. """
// Use \ to cut off lines after text.
var str1 = """
This is \
Multiple Lines
"""
// The triple quotes signs must be on their own lines.


// Doubles and booleans

// Double is short for "double-precision floating-point number" and just means it can hold a fraction value.  3.81 for example
// When creating a variable with a fraction, Swift automatically gives it the type double.
var Pi = 3.14

// Booleans are just a true or false variable

var alwaysRight = true


// String interpolation
// String interpolation is putting a variable inside a string.
// Put a variable inside a string by using \ and then put the variable name in the brackets following.  Like \(score)
var score = 85
var scoreString = "Your score was \(score)"
// You can even put strings in strings
var testResults = "Your test results: \(scoreString)"

// Constants
// Using the "let" statement you can create constants which cannot be changed after being created.
let taylor = "swift"
// Swift will warn you if you use a variable and don't change it later.


// Type Annotations
// You can tell Swift what type each data value is, instead of using Swift's prediction.
var year: Int = 1989
var height: Double = 5.7


