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

// Out of two Arrays, but with same mulible key this has errors
let deutsch = ["eins", "zwei", "drei"]
let english = ["one", "two","three"]
var myDict = Dictionary(uniqueKeysWithValues: zip(deutsch, english))
myDict ["zwei"] // two

// ignores doppelganger
let keys = [1, 2, 3, 1, 2]
let values = ["abc", "cde", "efg", "ghi", "ijk"]
let dirct2 = Dictionary(zip(keys, values), uniquingKeysWith: { (first, _) in first })
dirct2 // [1: "abc", 2: "cde", 3: "efg"]

// overwrite from existing elements
let dirct3 = Dictionary(zip(keys, values), uniquingKeysWith: { (_, next) in next })
dirct3 // [1: "ghi", 2: "ijk", 3: "efg"]

// taking the hightest elment
let dirct4 = Dictionary(zip(keys, values), uniquingKeysWith: { (first, next) in max(first, next) })
dirct4 // [1: "ghi", 2: "ijk", 3: "efg"]

// refactored syntax
let dirct5 = Dictionary(zip(keys, values), uniquingKeysWith: { max($0, $1)})
let dirct6 = Dictionary(zip(keys, values)) {max($0, $1)}
