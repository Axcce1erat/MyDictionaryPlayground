import UIKit

import Foundation

class Emloyee {
    
    var name = ""
    var salary = 0
    var role = ""
    
    func doWork () {
        print("My name is \(name) I am working")
        salary += 1
    }

}

let a:Int = 10
let b:String = "Ted"
var c:Emloyee = Emloyee()

c.name = "Tom"
c.role = "Director"
c.salary = 1000
print(c.salary)

c.doWork()

var d = Emloyee()
d.name = "Sarah"
d.role = "Manager"
d.salary = 5000

d.doWork()

