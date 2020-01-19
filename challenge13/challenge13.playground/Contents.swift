import Foundation

func challenge13(input: String) -> String {
  guard let first = input.first else {
    return ""
  }
  var ans = ""
  var cur: (char: String.Element, count: Int) = (char: first, count: 0)
  for i in 0..<input.count {
    let inp = Array(input)[i]
    if cur.char == inp {
      cur.count += 1
    } else {
      let containedCur = String(cur.char) + String(cur.count)
      ans += containedCur
      cur = (char: inp, count: 1)
    }
    // Add last ans
    if i == input.count - 1 {
      let containedCur = String(cur.char) + String(cur.count)
      ans += containedCur
    }
  }
  return ans
}

challenge13(input: "aabbcc")
challenge13(input: "aaabaaabaaa")
challenge13(input: "aaAAaa")
