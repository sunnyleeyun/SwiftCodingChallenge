import Foundation

func challenge24(string: String) -> Int {
  var total = 0
  var currentNumber = ""
  for i in 0..<string.count {
    let element = String(Array(string)[i])
    let elementInt = Int(element)
    let elementIsInt = (elementInt != nil)
    if elementIsInt && (i + 1 >= string.count) {
      currentNumber = element
    } else if elementIsInt && (i + 1 < string.count) {
      currentNumber += element
      for j in (i + 1)..<string.count {
        let nextElement = String(Array(string)[j])
        let nextElementInt = Int(nextElement)
        if (nextElementInt == nil) {
          break
        } else {
          currentNumber += nextElement
        }
      }
    } else {
      continue
    }
    total += (Int(currentNumber) ?? 0)
    currentNumber = ""
  }
  return total
}
challenge24(string: "a1b2c3")
challenge24(string: "a10b20c30")
challenge24(string: "h8ers")

func challenge24Better(string: String) -> Int {
  var total = 0
  var currentNumber = ""
  for i in 0..<string.count {
    let element = String(Array(string)[i])
    if Int(element) != nil {
      currentNumber += element
    } else {
      total += (Int(currentNumber) ?? 0)
      currentNumber = ""
    }
  }
  total += (Int(currentNumber) ?? 0)
  return total
}
challenge24Better(string: "a1b2c3")
challenge24Better(string: "a10b20c30")
challenge24Better(string: "h8ers")


