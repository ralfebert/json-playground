import Foundation

let jsonString =
    """
    {
        "name": "Bob",
        "age": 25
    }
    """
let data = jsonString.data(using: .utf8)!

let dictionary = try JSONSerialization.jsonObject(with: data, options: []) as! [String: Any]
print(dictionary["name"])

let serializedData = try JSONSerialization.data(withJSONObject: dictionary, options: [])
