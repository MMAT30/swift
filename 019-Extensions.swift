extension Int {
    func squared() -> Int {
        return self * self
    }
}


extension Collection {
    func summarize() -> Void {
        print("There are a \(count)")
        for val in self {
            print(val)
        }
    }
}

let n1 = 2
var n2 = n1.squared()
print(n2)

let c1 = [0,1,2,3,4,5,6,7,8,9]
c1.summarize()

