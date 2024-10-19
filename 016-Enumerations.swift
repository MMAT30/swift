// creating a enum
enum Direction {
    case north, south, east, west

    // creating method
    func printDirection() {
        switch self {
        case .north:
            print("Going North")
        case .south:
            print("Going South")
        case .east:
            print("Going East")
        case .west:
            print("Going West")
        }
    }
}
print(Direction.self)

// creating an instance of the enum
var dir: Direction = Direction.north
print(dir.printDirection())


// assigning new values to enum
dir = .east
print(dir)


// switch case with enum
switch dir {
case .north:
    print("Going North")
case .south:
    print("Going South")
case .east:
    print("Going East")
case .west:
    print("Going West")
}


// creating an enum with raw values
enum Month: Int {
    case jan = 1, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec
}

// accessing enum raw values
print(Month.jan.rawValue)
print(Month.feb.rawValue)
print(Month.dec.rawValue)






