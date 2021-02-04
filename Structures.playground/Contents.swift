import Cocoa

// Define a structure that describes a person
struct Person {
    
    // MARK: Properties
    // Each property is an attribute of a given person
    // Examples of stored properties.  They just hold a value.  Containers.
    var name: String
    var hairColour: String
    var age: Int
    var heightInCentimetres: Double
    var massInKilograms: Double
    
    // MARK: Computed Properties
    // Return height in metres
    // A computed property
    var heightInMetres: Double {
        return heightInCentimetres / 100
    }
    // Return body mass index
    // Computed property
    var bodyMassIndex: Double {
        return massInKilograms / (heightInMetres * heightInMetres)
    }
    
    // MARK: Functions
    // Say hi
    // A function
    // Use a function over a computed property when you need information to do the job
    // In this case, we need the "intro"
    func sayHello(with intro: String) {
        print(intro + name)
    }
}
// Structres are a type
// We are literally creating new data types in Swift
// We create instances of this new type the same way we do so for Int and String etc.

var me = Person(name: "Brad Kang", hairColour: "Black", age: 15, heightInCentimetres: 169.8, massInKilograms: 62.2)

// Say hello a few different ways
me.sayHello(with: "hey my name is")
me.sayHello(with: "hey, how are you, I'm ")
