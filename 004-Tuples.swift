// creating tuples
var fullName1: (String, String) = ("Taylor", "Swift")
var fullName2: (first: String, last: String) = ("Taylor", "Swift")

// accessing tuple 
print(fullName1)
print(fullName2)

// accessing tuple elements
print(fullName1.0)
print(fullName1.1)
print(fullName2.first)
print(fullName2.last)

// declaring optional tuples
var fullName3: (first: String, last: String)? = ("Taylor", "Swift")
print(fullName3!)


// interpolation

print("Full name is \(fullName3!.first) \(fullName3!.last)")
