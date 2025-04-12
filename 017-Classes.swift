// defining a class
// final class Vechile - can be used to create a immutable template 
// that can be copied but not overridden
class Vechile {
    var tires: Int
    var doors: Int
    var type: String
    var color: String

    init(tires: Int, doors: Int, type: String, color: String) {
        self.tires = tires
        self.doors = doors
        self.type = type
        self.color = color
    }

    deinit {
        print("Deint \(self)")
    }

    public func info() {
        print("Vechile")
        print("\(self.tires)")
        print("\(self.doors)")
        print("\(self.type)")
        print("\(self.color)")
    }
}

class Sedan: Vechile {
    init(type: String, color: String) {
        super.init(tires: 4, doors: 4, type: type, color: color)
    }

    override public func info() {
        print("Sedan")
        print("\(self.tires)")
        print("\(self.doors)")
        print("\(self.type)")
        print("\(self.color)")
    }

  
}

var s1: Sedan? = Sedan(type: "BMW", color: "Red")
s1?.info()

// fake delete to call deint method
s1 = nil