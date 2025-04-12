// creating a dictionary
// var dict1: [String: Int] = ["one": 1, "two": 2, "three": 3]

// creating a empty dictionary
var dict1 = [String: Int]()

// adding to the dictionary
dict1["one"] = 1
dict1["two"] = 2
dict1["three"] = 3

// accessing dictionary elements and catching nill
print(dict1["one"] ?? "one not found")
print(dict1["two"] ?? "two not found")

// preffered way of accessing dictionary elements and catching nill
print(dict1["one", default: 777] )
print(dict1["two", default: 777])

// reassigning dictionary elements
dict1["one"] = 10
dict1["two"] = 20
print(dict1)

// adding elements to dictionary
dict1["four"] = 4
dict1["five"] = 5
print(dict1)

// iterating over dictionary
for (key, value) in dict1 {
    print(key, value)
}

// dictionary with array values
var dict2: [String: [Int]] = ["one": [1, 2, 3], "two": [4, 5, 6], "three": [7, 8, 9]]
print(dict2)
