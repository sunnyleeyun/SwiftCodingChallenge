import Foundation

// MARK: Origin Solution
func challenge1(input: String) -> Bool {
  let characters = Array(input)
  var asciis: [UInt8] = []
  for i in 0..<characters.count {
    let currentChar = characters[i]
    guard let currentCharAscii = currentChar.asciiValue else {
      return false
    }
    if !asciis.contains(currentCharAscii) {
      asciis.append(currentCharAscii)
    } else {
      return false
    }
  }
  return true
}

challenge1(input: "No duplicates")
challenge1(input: "abcdefghijklmnopqrstuvwxyz")
challenge1(input: "AaBbCc")
challenge1(input: "Hello, world")


func challenge1Better(input: String) -> Bool {
  return Set(Array(input)).count == input.count
}

challenge1Better(input: "No duplicates")
challenge1Better(input: "abcdefghijklmnopqrstuvwxyz")
challenge1Better(input: "AaBbCc")
challenge1Better(input: "Hello, world")
