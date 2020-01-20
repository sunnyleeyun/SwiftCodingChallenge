import Foundation

// Peek answer
func challenge14(string: String, current: String = "") {
  let length = string.count
  let strs = Array(string)
  if length == 0 {
    print(current)
    print("**********")
  } else {
    for i in 0..<length {
      let left = strs[0..<i]
      let right = strs[(i + 1)..<length]
      challenge14(string: String(left + right), current: current + String(strs[i]))
    }
  }
}

challenge14(string: "abc")
