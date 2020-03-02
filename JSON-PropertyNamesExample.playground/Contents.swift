import Foundation

struct Person: Codable {
    let name: String
    let birthdayDate: Date
}

let jsonEncoder = JSONEncoder()
jsonEncoder.dateEncodingStrategy = .iso8601
jsonEncoder.keyEncodingStrategy = .convertToSnakeCase
jsonEncoder.outputFormatting = .prettyPrinted

let jsonDecoder = JSONDecoder()
jsonDecoder.dateDecodingStrategy = .iso8601
jsonDecoder.keyDecodingStrategy = .convertFromSnakeCase

let data = try jsonEncoder.encode(Person(name: "Bob", birthdayDate: Date()))
let str = String(data: data, encoding: .utf8)!
print(str)

try jsonDecoder.decode(Person.self, from: data)
