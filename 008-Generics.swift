// definition of generic function
func description<T>(value: T) {
    print("Value: \(value)")
}


// calling generic function
description(value: 10)
description(value: "Swift")