// variables
var bl1: Bool = true
var bl2: Bool = false
var n1: Int = 10



// if - else if - else
if bl1 {
    print("bl1 is true")
} else if bl1 == false {
    print("bl1 is false")
    
} else {
    print("bl1 is neither true nor false")
}

// ternary operator
var num1 = bl1 ? 10 : 20
print(num1)


// conditional assignment
num1 = if bl1 { 10 } else { 20 }
print(num1)


// switch
switch n1 {
case 1:
    print("n1 is \(n1)")
case 2:
    print("n1 is \(n1)")
default:
    print("n1 is \(n1)")
}

// switch with range
switch n1 {
case 1...5:
    print("n1 is between 1 and 5")
case 6...10:

    print("n1 is between 6 and 10") 
default:
    print("n1 is \(n1)")
}

// switch with tuple
var point = (1, 1)
switch point {
case (0, 0):
    print("point is at origin")
case (_, 0):
    print("point is on x-axis") 
case (0, _):
    print("point is on y-axis")
default:    
    print("point is at \(point)")
}

// switch with where
point = (1, 1)
switch point {
case let (x, y) where x == y:
    print("point is on line x = y")
case let (x, y) where x == -y:
    print("point is on line x = -y")
default:
    print("point is at \(point)")
}

// switch with fallthrough
n1 = 10
switch n1 {
case 1...5:
    print("n1 is between 1 and 5")
    fallthrough
case 6...10:
    print("n1 is between 6 and 10")
default:
    print("n1 is \(n1)")
}

// switch with break
n1 = 10
switch n1 {
case 1...5:
    print("n1 is between 1 and 5")
    break
case 6...10:
    print("n1 is between 6 and 10")
    break
default:
    print("n1 is \(n1)")
}

// switch with compound cases
n1 = 10
switch n1 {
case 1, 3, 5, 7, 9:
    print("n1 is odd")
case 2, 4, 6, 8, 10:
    print("n1 is even")
default:
    print("n1 is \(n1)")
}


// switch with value binding
point = (1, 1)
switch point {
case (let x, 0):
    print("point is on x-axis with x = \(x)")
case (0, let y):
    print("point is on y-axis with y = \(y)")
case let (x, y):
    print("point is at (\(x), \(y))")
}


// switch with assignment
point = (1, 1)

var message = switch point {
case (0, 0):
    "point is at origin"
case (_, 0):
    "point is on x-axis"
case (0, _):
    "point is on y-axis"
default:
    "point is at \(point)"
}



