import UIKit

struct deque<T> {
  var array = [T]()
  
  var count: Int {
    return array.count
  }
  
  mutating func pushBack(_ obj: T) {
    array.append(obj)
  }
  
  mutating func pushFront(_ obj: T) {
    array.insert(obj, at: 0)
  }
  
  mutating func popBack() -> T? {
    return array.popLast()
  }
  
  mutating func popFront() -> T? {
    if array.isEmpty {
      return nil
    } else {
      return array.removeFirst()
    }
  }
}
var numbers = deque<Int>()
numbers.pushBack(5)
numbers.pushBack(8)
numbers.pushBack(3)
print(numbers.count == 3)
print(numbers.popFront()! == 5)
print(numbers.popBack()! == 3)
print(numbers.popFront()! == 8)
print(numbers.popBack() == nil)
