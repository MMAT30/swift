// while loop
var counter: Int = 0
while counter < 5 {
    print("while \(counter)")
    counter += 1
}


// repeat - while loop
counter = 0
repeat {
    print("repeat-while \(counter)")
    counter += 1
} while counter < 5


// for in loop
var str = "String"
for char in str {
    print(char)
}

// for in loop with range
for i in 1...5 {
    print("for \(i)")
}

for i in 1..<5 {
    print("for \(i)")
}
for i in (1...5).reversed() {
    print("for \(i)")
}

// break in for loop
for i in 1...5 {
    if i == 3 {
        break
    }
    print("break \(i)")
}