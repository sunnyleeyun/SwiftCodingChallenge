import UIKit

extension Collection {
  
  func challenge46<T>(_ transform: (Iterator.Element) throws -> T) rethrows -> [T] {
    var returnValue = [T]()
    
    for item in self {
      returnValue.append(try transform(item))
    }
    return returnValue
  }
  
}

var test = [1, 2, 3, 4].challenge46 { String($0) }
print(test)
