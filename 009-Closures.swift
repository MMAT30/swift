// closure
let squared = {
    (val: Int) -> Int in 
    return val * val 
}
print("2 squared = \(squared(2))")


// creating counter function that has its own internal scope
func counter () -> () -> Int {
    var count = 0
    func incrementer() -> Int {
        count += 1
        return count
    }
    return incrementer
}


// creating the scope of counter function
let counter1 = counter()

// calling the internal function incrementer
print(counter1())
print(counter1())


// trailing closure syntax
func travel(action: (String) -> String) {
    print("start")
    let description = action("London")
    print(description)
    
    print("end")
}

travel() {
    (place: String) in
    print("doing thing in")
    return place
}

travel {
    (place: String) in
    print("doing thing in")
    return place
}


