import Foundation



enum ContactOption: Codable {
    case phone(countryCode: Int, number: String)
    case email(email: String)
}

let options: [ContactOption] = [
    .phone(countryCode: 49, number: "123-56789"),
    .email(email: "info@example.com"),
]

let jsonEncoder = JSONEncoder()
jsonEncoder.outputFormatting = .prettyPrinted
let jsonResultData = try jsonEncoder.encode(options)
let jsonResultString = String(data: jsonResultData, encoding: .utf8)!
print(jsonResultString)
