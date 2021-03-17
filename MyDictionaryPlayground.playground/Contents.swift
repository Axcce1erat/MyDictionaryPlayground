import UIKit

// Declaring an empty string: string dictionary
var myDictionary = [String:String]()

// Assigning data into a dictionary
myDictionary["FB AA 1989"] = "Green Tesla"
myDictionary["FB BB 1989"] = "Red Farrari"

// Retrieving a value as optional string
let myDreamCar = myDictionary["FB AA 1989"]

// Replacing the value for a key
myDictionary["FB AA 1989"] = "Black Lamborghini"

// Remove a Value for a key
//myDictionary["FB AA 1989"] = nil

// Loop through the items of a dictionary
for (key, value) in myDictionary{
    // Do for each item of the dictionary
    
    // out FB AA 1989 & FB BB 1989
    print(key)
    
    // out Green Tesla & Red Farrari
    print(value)
    
    // out FB AA 1989 is a Green Tesla & FB BB 1989 is a Red Farrari
    print("\(key) is a \(value)")
}
