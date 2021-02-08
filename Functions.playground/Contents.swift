import Cocoa

// WRITING FUNCTIONS

// An example way of how to write functions
func printHelp() {
    let message = """
Welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""

    print(message)
}

// You can use it by calling upon the function
printHelp()

// ACCEPTING PARAMETERS

// Parameters are similar to passing strings and integers to the print code.
print("Hello, world!")

// A parameter needs to be written in the brackets following the function name.
// First, you input what the parameter name that the call-site sees (Here, number.)
// You can also write an internal name, which is called upon inside the function.
// Such as func square(number n: Int)
// Next, you have colons and the data type that is going to be input.  Then you can put a comma and continue with other parameters.
func square1(number: Int) {
    print(number * number)
}

// Calling this function is as follows
// Input the number into the space given.
square1(number: 8)


// RETURNING VALUES

// Returning a value is telling the function what kind of data type it is trying to give back.
// The -> Int tells the function that it is trying to return an integer.

func square2(number: Int) -> Int {
    return number * number
}

// You can call and print this answer.
let result = square2(number: 8)
print(result)

// You can omit the return keyword when the function only has one expression
// An expression is something that can be assigned to a variable or printed.
// For example.
func noReturn() -> Int {
    5+5
}
print(noReturn())

// You can use arrays or a Tuple to return multiple values.
// For example,
// This tells us that the values for the parameters are below, and you can choose what name to print below from calling the function.
func getUser() -> (first: String, last: String) {
    (first: "Taylor", last: "Swift")
}

let user = getUser()
print(user.first)

// PARAMETER LABELS

// Parameters can have two names.  An internal name and external name.
// "to" is the external name, and "name" is the internal name.  It's so that the function reads sensible code while it also makes sense at the call site.
func sayHello(to name: String) {
    print("Hello, \(name)!")
}
// As seen below
sayHello(to: "Jimmy")

// OMITTING PARAMETER LABELS

// You can omit parameter names by placing _ in place of a name.
func greet(_ person: String) {
    print("Hello, \(person)!")
}
// You can now call the function without a parameter name popping up
greet("Jimmy")


// DEFAULT PARAMETERS

// Default parameters are given to different things and will always be that way unless the user changes it.
// For example, print has a new line terminator.  You can change that terminator to be a space instead of a new line.
// Same here, it shows that the Bool nicely has a default value of true.
// It will always be true unless changed
func greet2(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}
// The two ways to change it are as follows
greet2("Jimmy")
greet2("Jimmy", nicely: false)
