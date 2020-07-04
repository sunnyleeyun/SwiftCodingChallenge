import UIKit

extension Collection where Iterator.Element == Int {
  func challenge41() -> Double? {
    if self.isEmpty {
      return nil
    }
    let sorted = self.sorted()
    let count = self.count
    let mid = count / 2
    switch count % 2 == 0 {
    case true: // even
      return Double(sorted[mid - 1] + sorted[mid]) / 2
    case false: // odd
      return Double(sorted[mid])
    }
  }
}

[1, 2, 3].challenge41()
[1, 2, 9].challenge41()
[1, 3, 5, 7, 9].challenge41()
[1, 2, 3, 4].challenge41()
[Int]().challenge41()
