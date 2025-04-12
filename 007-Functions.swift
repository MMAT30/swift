// functions
func hello() {
    print("Hello, World!")
}

// value returning functions
func greet(person: String) -> String {
    let greeting = "Hello, " + person + "!"
    return greeting
}

// tuple returning functions
func wordLength(word: String) -> (String, Int) {
    let length = word.count
    return (word, length)
}

// guard with functions
func greet(person: String?) {
    guard let person = person else {
        print("Person is nil")
        return
    }
    print("Hello, \(person)!")
}

// overloading functions
func repeats(name: String) -> String {
    return "Hello, " + name + "!"
}

func repeats(number: Int) -> String {
    return "Hello, " + String(number) + "!"
}

// variadic functions
func sum(numbers: Int...) -> Int {
    var counter = 0

    for num in numbers {
        counter += num
    }
    return counter
}


// in-out functions
var number = 11
func double(val: inout Int) {
    val *= 2
}

// error catching functions
enum PasswordError: Error {
    case obvios
}

func validatePassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvios
    }

    return true
}

// calling functions
hello()
print("Function: greet -> \(greet(person: "Jack"))")
print("Function: wordLength -> \(wordLength(word: "Swift"))")
print(
    "Function: wordLength -> \(wordLength(word: "Swift").0) has \(wordLength(word: "Swift").1) characters"
)
print("Function: repeats -> \(repeats(name: "Jack"))")
print("Function: repeats -> \(repeats(number: 10))")
print("Function: variadic -> \(sum(numbers: 1,2,3,4,5))")
print("Function: inout -> \(double(val: &number))")
print("Function: inout -> \(number)")


do {
    let val = try validatePassword("password")
    print("\(val)")
} catch {
    print("invalid password")
}
