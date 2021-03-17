import Foundation

struct User: Codable {
    var firstName: String?
    var lastName: String?
    var country: String?
}


var user = User()
user.firstName = nil
user.lastName = nil
user.country = nil

let jsonData = try! JSONEncoder().encode(user)
let jsonString = String(data: jsonData, encoding: .utf8)!
print(jsonString)

let encoder = JSONEncoder()
encoder.outputFormatting = .prettyPrinted

do {
    let jsonData = try encoder.encode(user)

    if let jsonString = String(data: jsonData, encoding: .utf8) {
        print(jsonString)
    }
} catch {
    print(error.localizedDescription)
}
