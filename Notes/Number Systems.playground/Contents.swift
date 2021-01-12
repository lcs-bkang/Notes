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
 Multi line comment uses /*
 */
 
 /*
 Basic syntax for a function
    func functionName(parameter1, parameter2, ...) -> return type {
 
 }
 */
