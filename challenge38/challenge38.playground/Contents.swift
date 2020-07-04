import UIKit

extension Collection where Iterator.Element: Comparable {
  func challenge38(count: Int) -> [Iterator.Element] {
    let sorted = self.sorted()
    return Array(sorted.prefix(count))
  }
}
[1, 2, 3, 4].challenge38(count: 3)
["q", "f", "k"].challenge38(count: 10)
[256, 16].challenge38(count: 3)
[String]().challenge38(count: 3)
