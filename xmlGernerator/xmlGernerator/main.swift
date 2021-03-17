//
//  main.swift
//  xmlGernerator
//
//  Created by Axel Schwarz on 09.03.21.
//

import Foundation
import AEXML


let root = XMLElement(name: "root")
let xml = XMLDocument(rootElement: root)
root.addChild(XMLElement(name: "foo", stringValue:"bar"))
print(xml.xmlString)

/*
let fileManager = FileManager.default

do {
    try fileManager.createFile(atPath: <#T##String#>, contents: <#T##Data?#>, attributes: <#T##[FileAttributeKey : Any]?#>)
}
catch let error as NSError {
    print("Ooops! Something went wrong with renaming the apk file for the script: \(error)")
}
*/

