// creating a struct
struct FullName {
    var first: String
    var last: String

    // overloading the init method to accept no parameters
    init() {
        self.first = "Taylor"
        self.last = "Swift"
    }

    init(first: String, last: String) {
        self.first = first
        self.last = last
    }
}


// keypath of a struct instance
var person: FullName = FullName(first: "Taylor", last: "Swift")
let keyPath = \FullName.first

print(person[keyPath: keyPath])



// creating an instance of the struct
var s1: FullName = FullName(first: "Taylor", last: "Swift")


// accessing struct properties
print(s1)
print(s1.first)
print(s1.last)

// assigning new values to struct properties
s1.first = "John"
s1.last = "Doe"
print(s1)


// creating a struct with default values
struct FullNameDefault {
    var first: String = "Taylor"
    var last: String = "Swift"

    // type propertys
    static var nameParts: Int = 3

    // type methods - does not have access to instance properties
    static func helloPerson() -> String {
        return "hello person"
    }
}


// creating an instance of the struct
var s2: FullNameDefault = FullNameDefault()

// accessing struct properties
print(s2)


// creating a struct with computed properties and nested struct
struct Account {
    var USD: Double = 0.0
    var EUR: Double = 0.0
}

struct FullNameComputed {
    var first: String
    var last: String
    var fullName: String {
        return "\(first) \(last)"
    }
    var account = Account()
}

print(FullNameComputed(first: "Taylor", last: "Swift"))


// using computed properties
struct Price {
    var USD: Double = 0.0
    var EUR: Double = 0.0
    var rateEUR: Double;

    var euros: Double {
        get {
            return USD * rateEUR
        }
        set(euros) {
            USD = euros * rateEUR
        }
    }
}


// property observers
struct NameObserverStruct {
    var counter: Int = 0
    var len: Int = 0

    var name: String {
        // when setting the name property the len gets updated
        willSet(newName) {
            len = newName.count
        }
        // after setting the name property the counter gets updated
        didSet {
            counter += 1
        }
    }
}

// creating an instance of the struct
var nameObserver = NameObserverStruct(name: "Taylor")
nameObserver.name = "Swift"
nameObserver.name = "Johnny"

// accessing struct properties
print(nameObserver.name)
print(nameObserver.len)
print(nameObserver.counter)


// generic structs
struct Stack<T> {
    var items = [T]()

    func description() {
        print("Stack: \(items)")
    }
}

// creating an instance of the struct
var genStruct1 = Stack<Int>()
var genStruct2 = Stack<String>()

// adding items to the struct
genStruct1.items.append(10)
genStruct1.items.append(20)
genStruct1.items.append(30)

genStruct2.items.append("Swift")
genStruct2.items.append("Generics")
genStruct2.items.append("Structs")

// accessing struct properties
genStruct1.description()
genStruct2.description()
