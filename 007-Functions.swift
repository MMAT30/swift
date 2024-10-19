
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




// calling functions
hello()
print("Function: greet -> \(greet(person: "Jack"))")
print("Function: wordLength -> \(wordLength(word: "Swift"))")
print("Function: wordLength -> \(wordLength(word: "Swift").0) has \(wordLength(word: "Swift").1) characters")
print("Function: repeats -> \(repeats(name: "Jack"))")
print("Function: repeats -> \(repeats(number: 10))")
