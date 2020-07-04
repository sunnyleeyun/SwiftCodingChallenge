import UIKit

var str = "Hello, playground"

extension Collection where Iterator.Element == String {
  func challenge39() -> [String] {
    
    return self.sorted().reversed()
  }
}

["a", "abc", "ab"].challenge39()
["paul", "taylor", "adele"].challenge39()
[String]().challenge39()
