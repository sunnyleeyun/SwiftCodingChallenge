import Foundation

func challenge11(first: String, second: String) -> Bool {
  if !(first.count == second.count) {
    return false
  }
  var diffCount = 0
  for i in 0..<Array(first).count {
    let f = Array(first)[i]
    let s = Array(second)[i]
    if !(f == s) {
      diffCount += 1
    }
  }
  return !(diffCount > 3)
}

challenge11(first: "Clamp", second: "Cramp")
challenge11(first: "Clamp", second: "Crams")
challenge11(first: "Clamp", second: "Grams")
challenge11(first: "Clamp", second: "Grans")
challenge11(first: "Clamp", second: "Clam")
