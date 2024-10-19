// creating a int set
var intSet: Set<Int> = [1, 2, 3, 4, 5, 5, 5, 6, 6, 6]
print(intSet)

// count
print(intSet.count)

// contains
print(intSet.contains(5))

// insert
intSet.insert(7)
print(intSet)

// remove
intSet.remove(7)
print(intSet)

// sorted
print(intSet.sorted())

// combining sets
var set1: Set<Int> = [9, 10, 11, 12]
var newSet = intSet.union(set1)
print(newSet)

// subtracting sets
newSet = intSet.subtracting(set1)
print(newSet)

// isSubset
print(intSet.isSubset(of: newSet))