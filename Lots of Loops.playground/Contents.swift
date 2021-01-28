import Cocoa

var str = "Hello, playground"

// For loops
let count = 1...100

// For loop runs the code over and over again in the sequence it is provided.
for numbers in count {
    print("The number is \(numbers)")
}

// They can also be used for arrays
let albums = ["Red", "1998", "Reputation"]
for album in albums {
    print("\(album) is on Apple Music")
}
// If you don't need a variable within the for loop, replace it with an underscore.
for _ in 1...5 {
    print("5 times")
}

// While loops
// Loop continues until the condition fails
var number = 1

while number <= 20 {
    print(number)
    number += 1
}
print("Ready or not, here I come!")


// Repeat loops
// Exact same as a while loop, but the condition check is at the end.
var numbers = 1
repeat {
    print(numbers)
    numbers += 1
} while numbers <= 20

print("Ready or not, here I come)")

// A repeat loop will be run at least once, since the condition is checked to be false after the first run.  While loops will never be run if the condition is false because the conditon is checked before the first loop.
while false {
    print("This is false")
}

repeat {
    print("This is false")
} while false


// Exiting loops
// break is used to exit any loop
//
// This code as an example
//var countDown = 10
//
//while countDown >= 0 {
//    print(countDown)
//    countDown -= 1
//}
//
//print("Blast off!")

// Changed to this, will break the loop when the countdown reaches 4
var countDown = 10
while countDown >= 0 {
    print(countDown)

    if countDown == 4 {
        print("I'm bored. Let's go now!")
        break
    }

    countDown -= 1
}

// Exiting multiple loops
// A loop inside a loop is called a nested loop
// To exit multiple loops, you first need to name the outer loop.
// Then you need to add the condition inside the second loop and use break (Outerloop name) to break both loops.
// A regular break will just break the inside loop.
outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")

        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}

// Skipping items
// Using break would break the whole loop.
// Using continue will skip the current item.
for i in 1...10 {
    if i % 2 == 1 {
        continue
    }

    print(i)
}

// Infinite loops
// To create a loop that always loops, use true, since true is always true.
var counter = 0

while true {
    print(" ")
    counter += 1
// This loop will continue to loop until the counter is 273.
    if counter == 273 {
        break
    }
}

