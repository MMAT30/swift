
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