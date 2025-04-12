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
    case jan = 1
    case feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec
}

// accessing enum raw values
print(Month.jan.rawValue)
print(Month.feb.rawValue)
print(Month.dec.rawValue)

// associated enums
enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

var productBarcode = Barcode.upc(8, 85909, 51226, 3)

switch productBarcode {
case .upc(let numberSystem, let manufacturer, let product, let check):
    print("UPC: \(numberSystem), \(manufacturer), \(product), \(check).")
case .qrCode(let productCode):
    print("QR code: \(productCode).")
}

productBarcode = .qrCode("ABCDEFGHIJKLMNOP")
switch productBarcode {
case .upc(let numberSystem, let manufacturer, let product, let check):
    print("UPC: \(numberSystem), \(manufacturer), \(product), \(check).")
case .qrCode(let productCode):
    print("QR code: \(productCode).")
}
