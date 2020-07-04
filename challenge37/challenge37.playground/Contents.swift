import UIKit

extension Collection where Iterator.Element == Int {
  func challenge37(count: String) -> Int {
    var total = 0
    for item in self {
      let itemString = String(item)
      for itS in itemString {
        if String(itS) == count {
          total += 1
        }
      }
    }
    return total
  }
  func challenge37Better(count: String) -> Int {
    return self.reduce(0) { $0 + String($1).filter { String($0) == count }.count }
  }
}

[5, 15, 55, 515].challenge37(count: "5")
[5, 15, 55, 515].challenge37(count: "1")
[55555].challenge37(count: "5")
[55555].challenge37(count: "1")
[5, 15, 55, 515].challenge37Better(count: "5")
[5, 15, 55, 515].challenge37Better(count: "1")
[55555].challenge37Better(count: "5")
[55555].challenge37Better(count: "1")
