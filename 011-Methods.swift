// creating struct with methods
struct FullName {
    var first: String
    var last: String
    
    func fullName() -> String {
        return "\(first) \(last)"
    }
}

// creating an instance of the struct
var s1: FullName = FullName(first: "Taylor", last: "Swift")

// accessing struct properties
print(s1.fullName())