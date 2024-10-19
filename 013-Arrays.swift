// creating an array
var vals: [Int] = [1, 2, 3]


// accessing array elements
print(vals[0])
print(vals[1])
print(vals[2])

// assigning value to array elements
vals[0] = 4
vals[1] = 5
vals[2] = 6
print(vals)


// appending elements to array
vals.append(7)
vals += [8, 9]
print(vals)

// multi dimensional array
var twoD: [[Int]] = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
var threeD: [[[Int]]] = [[[1, 2, 3], [4, 5, 6], [7, 8, 9]], [[10, 11, 12], [13, 14, 15], [16, 17, 18]]]
print(twoD)
print(threeD)

// enumerating array elements
for (index, val) in vals.enumerated() {
    print(index, val)
}

// inserting and adding elements
vals.insert(0, at: 0)
vals.insert(10, at: 5)
vals.append(123)
print(vals)


// conditionally find a value in array
var found = vals.contains { value in
    value == 123
}
print(found)

// filter
var filtered = vals.filter { value in
    value % 2 == 0
}
print(filtered)

// map
var mapped = vals.map { value in
    value * 2
}
print(mapped)

// conversion to string array
var strArr = vals.map { value in
    String(value)
}
print(strArr)

// using a structure initializer with a map
var initArr =  vals.map(String.init)
print(initArr)

// reducing an array
var reduced = vals.reduce(0) { result, value in
    result + value
}
print(reduced)

// reversing an array
print(Array(vals.reversed()))


// sorted array
print(vals.sorted())


// custom sorting
var sorted = vals.sorted { $0 > $1 }

// max
print(vals.max() ?? "No max value")