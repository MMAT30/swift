protocol Identifiable {
    var id: String { get set}
    func identity()
}

extension Identifiable {
    func identity() {
        print("My ID is \(self.id)")
    }
}

struct User: Identifiable {
    var id: String
}

// protocol inheritance
protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}


protocol Employee: Payable, NeedsTraining, HasVacation {}

let u1 = User(id: "U1")
u1.identity()