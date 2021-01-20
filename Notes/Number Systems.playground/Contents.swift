import Cocoa

var str = "Hello, playground"
// Find the digits that represent 27 in binary

// Use the Remainder operator to get the first Binary digit
// The Remainder operator is the % sign

27 % 2


// Find the decimal value left to convert
// The division operator is /

27 / 2


// Get next binary digit

13 % 1

// Get value left to convert

13 / 2

// Next digit

6 % 2

// Value left

6 / 2

// Next binary digit
3 % 2

// Decimal value that is left
3 / 2

// Last binary digit
1 % 2

//  Done - because decimal value is 0
1 / 2



// Binary digits of 543

// Binary digit
543 % 2

// Decimal number left
543 / 2

// Binary digit
271 % 2

// Decimal value left
271 / 2

// Binary digit
135 % 2

// Decimal value left
135 / 2

// Binary digit
67 % 2

// Decmical value left
67 / 2

// Binary digit
33 % 2

// Decimal Value left
33 / 2

// Binary digit
16 % 2

// Decimal value left
16 / 2

// Binary
8 % 2

// Decimal
8 / 2

// Binary
4 % 2

// Decimal
4 / 2

// Binary
2 % 2

// Decimal
2 / 2

// Binary
1 % 2

// Decimal
1 / 2

// Done


// Base 10 number of 76 to binary

76 % 2
76/2

38%2
38/2

19%2
19/2

9%2
9/2

4%2
4/2

2%2
2/2

1%2
1/2
// Creates constant with value 76
// Constants cannot be changed once created
let valueToConvert = 17

// Creates a variable with value valueToConvert
// Variables can be changed once created
var decimalValueLeft =  valueToConvert
// Creates an empty string
// Strings are text
var binaryRepresentation = ""

// Abstraction used is a loop.
// Our end condition is that the decimal value left to convert is 0
//  As long as the condition is true, the code will be run repeatedly.
while decimalValueLeft > 0 {
    // First, get next binary digit
  let nextBinaryDigit = decimalValueLeft % 2
    // Add the digit to the binary number
    // Swift is a stricty typed language
    // Does not convert data types
    // So to make the Int into a string, we must identify this
    binaryRepresentation = String(nextBinaryDigit) + binaryRepresentation
    // Get decimal value left to convert
    decimalValueLeft = decimalValueLeft / 2
    
}
binaryRepresentation


// Functions - A way to group (encapsulate) related behaviour
//  Once some behaviour is inside a function, the complexity is hidden.
// We can use, or "call" the function whenever we want.
 
 /*
 Basic syntax for a function
    func functionName(parameter1, parameter2, ...) -> return type {
 
 }
 */
 
// Enumeration - Lists possibilities (cases).  Limits possibiities
// The : Int... defines the type of the raw value associated with a case
// An example of abstraction.  Hides complexity.  Makes call site easier to read
// Call site is the line of code that calls on a function
enum NumberSystemBase: Int {
    case binary = 2 // 2 is the raw value for this case
    case octal = 8 // 8 = raw value
    case hexadecimal = 16 // 16 = raw value
    
}
 // Get the alternate representation of a value in a different base
 // Parameter is a piece of information that the function needs to work
func getRepresentation(of valueToConvert: Int, inBase base: NumberSystemBase) -> String {

    // Creates a variable with value valueToConvert
    // Variables can be changed once created
    var decimalValueLeft =  valueToConvert
    // Creates an empty string
    // Strings are text
    var Representation = ""

    // Abstraction used is a loop.
    // Our end condition is that the decimal value left to convert is 0
    //  As long as the condition is true, the code will be run repeatedly.
    while decimalValueLeft > 0 {
        // First, get next binary digit
        let nextDigit = decimalValueLeft % base.rawValue
        // Add the digit to the number
        // Swift is a stricty typed language
        // Does not convert data types
        // So to make the Int into a string, we must identify this
        
        // IF statement checks a condition.  If true, do something, if false, do something else.
        // First statement is true.  Else is when the condition is false.
        if base == .hexadecimal {
            // We know the base is hexadecimal
            
            // Carefully set the next digit
            // When the digit is not 0-9, make digits A B C D E and F
            
            // Switch statement evaluates a value and takes different actions depending on the value.
            switch nextDigit {
            case 0...9:
                Representation = String(nextDigit) + Representation
            case 10:
                Representation = "A" + Representation
            case 11:
                Representation = "B" + Representation
            case 12:
                Representation = "C" + Representation
            case 13:
                Representation = "D" + Representation
            case 14:
                Representation = "E" + Representation
            case 15:
                Representation = "F" + Representation

            default:
                break
            }
        } else {
            // We know the base is octal or binary
            Representation = String(nextDigit) + Representation
        }
        
        
        // Get decimal value left to convert
        decimalValueLeft = decimalValueLeft / base.rawValue
        
    }
   return Representation

}
 //  Call or use the function
getRepresentation(of: 60, inBase: .binary)
getRepresentation(of: 60, inBase: .octal)
getRepresentation(of: 17, inBase: .hexadecimal)
getRepresentation(of: 63, inBase: .hexadecimal)

// Converting binary to decimal

// Value we are converting
let value = "2A"

// What base are we converting from?
let base = 16.0


// Exponent value at the rightmost digit
var exponent = 0.0

// Current sum in decimal
var decimalEquivalent = 0.0
// Iterate over each character
// From right to left
// For...in will loop the exact right amount of times.

for character in value.reversed() {
    if base == 16.0 {
        // If conversions to doubles work, it is 0-9
        if let digit = Double(String(character)) {
            decimalEquivalent += digit * pow(base, exponent)
        } else {
            // It can't be switched to a double, so its A-F
        switch character {
        case "A":
            decimalEquivalent += 10 * pow(base, exponent)
        case "B":
            decimalEquivalent += 11 * pow(base, exponent)
        case "C":
            decimalEquivalent += 12 * pow(base, exponent)
        case "D":
            decimalEquivalent += 13 * pow(base, exponent)
        case "E":
            decimalEquivalent += 14 * pow(base, exponent)
        case "F":
            decimalEquivalent += 15 * pow(base, exponent)
        default:
            break
        }
    }
    }
    // Increment exponent
    exponent += 1
}
// Get the result
decimalEquivalent
