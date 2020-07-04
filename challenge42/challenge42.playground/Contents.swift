import UIKit

extension Collection where Iterator.Element == Int {
  func challenge42(indexOf number: Int) -> Int? {
    for (i, n) in self.enumerated() {
      if n == number {
        return i
      }
    }
    return nil
  }
}

[1, 2, 3].challenge42(indexOf: 1)
[1, 2, 3].challenge42(indexOf: 3)
[1, 2, 3].challenge42(indexOf: 5)
