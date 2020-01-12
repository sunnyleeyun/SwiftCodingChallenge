import Foundation

// Not pass second case "   a"
func challenge7(input: String) -> String {
  let components = input.components(separatedBy: .whitespacesAndNewlines)
  return components.filter { !$0.isEmpty }.joined(separator: " ")
}

challenge7(input: "a   b   c")
challenge7(input: "    a") // Didn't pass
challenge7(input: "abc")

// Correct
func challenge7Correct(input: String) -> String {
  var seenSpace = false
  var ans = ""
  for i in 0..<Array(input).count {
    let letter = Array(input)[i]
    if letter == " " {
      if seenSpace {
        continue
      }
      seenSpace = true
      
    } else {
      seenSpace = false
    }
    ans.append(letter)
  }
  return ans
}

challenge7Correct(input: "a   b   c")
challenge7Correct(input: "    a")
challenge7Correct(input: "abc")

// [space]+: match one or more spaces.
// However, slower
func challenge7Better(input: String) -> String {
  return input.replacingOccurrences(of: " +", with: " ", options: .regularExpression, range: nil)
}

challenge7Better(input: "a   b   c")
challenge7Better(input: "    a")
challenge7Better(input: "abc")
