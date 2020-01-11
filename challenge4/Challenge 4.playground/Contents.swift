import Foundation

extension String {
  func fuzzyContains(_ string: String) -> Bool {
    var stringFirstIndexSet = false
    let selfElementLowCased = Array(self.lowercased())
    let stringElementLowCased = Array(string.lowercased())
    guard let stringFirst = stringElementLowCased.first else {
      return false
    }
    for i in 0..<selfElementLowCased.count {
      if selfElementLowCased[i] == stringFirst {
        stringFirstIndexSet = true
        if selfElementLowCased.count - stringElementLowCased.count - i < 0 {
          return false
        }
        for j in 0..<stringElementLowCased.count {
          if !(selfElementLowCased[i + j] == stringElementLowCased[j]) {
            return false
          }
        }
      }
    }
    return stringFirstIndexSet && true
  }
}
"Hello, world".fuzzyContains("Hello")
"Hello, world".fuzzyContains("WORLD")
"Hello, world".fuzzyContains("Goodbye")


extension String {
  func fuzzyContainsBetter(_ string: String) -> Bool {
    return self.range(of: string, options: .caseInsensitive) != nil
  }
}

"Hello, world".fuzzyContainsBetter("Hello")
"Hello, world".fuzzyContainsBetter("WORLD")
"Hello, world".fuzzyContainsBetter("Goodbye")
