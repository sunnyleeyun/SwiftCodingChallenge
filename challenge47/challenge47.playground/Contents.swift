import UIKit

extension Collection where Iterator.Element: Comparable {
  func challenge47() -> Iterator.Element? {
    guard var lowest = self.first else {
      return nil
    }
    for item in self {
      if item < lowest {
        lowest = item
      }
    }
    return lowest
  }
}

[1, 2, 3].challenge47()
["q", "f", "k"].challenge47()
[4096, 256, 16].challenge47()
[String]().challenge47()
