import Foundation

// MARK: - Person
struct Person: Codable {
    let name: String
    let age: Int
    let phone: [Phone]?
    let address: Address?
}

// MARK: - Address
struct Address: Codable {
    let street, zip, city: String
}

// MARK: - Phone
struct Phone: Codable {
    let type, number: String
}

// JSON aus Projektdatei parsen

let jsonURL = Bundle.main.url(forResource: "persons", withExtension: "json")!

let jsonData = try Data(contentsOf: jsonURL)

let jsonDecoder = JSONDecoder()
let persons = try jsonDecoder.decode([Person].self, from: jsonData)

let person = persons.first!
let name = person.name

// JSON serialisieren

let jsonEncoder = JSONEncoder()
let jsonResultData = try jsonEncoder.encode(persons)
let jsonResultString = String(data: jsonResultData, encoding: .utf8)
