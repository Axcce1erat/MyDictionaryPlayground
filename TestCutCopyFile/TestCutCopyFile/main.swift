//
//  main.swift
//  TestCutCopyFile
//
//  Created by Axel Schwarz on 19.03.21.
//

import Foundation
import AppKit

var asset = "asset"
var name = "assetName"
var ver = "version"

let fileManager = FileManager.default

let scriptURL : URL = URL(fileURLWithPath:"/Users/axelschwarz/Library/Developer/Xcode/DerivedData/TestCutCopyFile-gtbffcjoiwpxxvepjvlpmvonayut/Build/Products/Debug/")
let scriptURLDestionation: URL = URL(fileURLWithPath:"/Users/axelschwarz/Library/Developer/Xcode/DerivedData/TestCutCopyFile-gtbffcjoiwpxxvepjvlpmvonayut/Build/Products/Debug/\(asset)/\(name)/\(ver)")
let fileURL: URL = URL(fileURLWithPath:"/Users/axelschwarz/Library/Developer/Xcode/DerivedData/TestCutCopyFile-gtbffcjoiwpxxvepjvlpmvonayut/Build/Products/Debug/test.txt")
let fileURLTo: URL = URL(fileURLWithPath: "/Users/axelschwarz/Library/Developer/Xcode/DerivedData/TestCutCopyFile-gtbffcjoiwpxxvepjvlpmvonayut/Build/Products/Debug/\(asset)/\(name)/\(ver)/test.txt")

print(fileURL)
print(fileURLTo)

do {
    try fileManager.createDirectory(at: scriptURLDestionation, withIntermediateDirectories: true, attributes: nil)
}
catch let error as NSError {
    print("Ooops! Something went wrong with creating directorys: \(error)")
}

do {
    try fileManager.moveItem(at: fileURL, to: fileURLTo)
}
catch let error as NSError {
    print("Ooops! Something went wrong with cut and copy the singing results: \(error)")
}

