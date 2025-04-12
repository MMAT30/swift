// declaring optional variables
var opt1: Int? = 10;
var num1: Int? = 10
var count: Int? = 0
print(opt1!);

// nil-coalescing operator
count = num1 ?? 0


// if let
if let num1 {
    count = num1
    print("num1 is \(num1)")
} else {
    print("num1 is nil")
}

// guard if let
func check(val: Int?) {
    guard let value = val else {
        return
        
    }

    print(value)
}
check(val: opt1)

// if let with condition
if let num1 = num1, num1 > 5 {
    count = num1
    print("num1 is \(num1)")
} else {
    print("num1 is nil")
}

