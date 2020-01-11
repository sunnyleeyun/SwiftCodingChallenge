import Foundation

func challenge7(input: String) -> String {
  let components = input.components(separatedBy: .whitespacesAndNewlines)
  return components.filter { !$0.isEmpty }.joined(separator: " ")
}

challenge7(input: "a   b   c")
challenge7(input: "    a")
challenge7(input: "abc")

// [space]+: match one or more spaces
func challenge7Better(input: String) -> String {
  return input.replacingOccurrences(of: " +", with: " ", options: .regularExpression, range: nil)
}

challenge7Better(input: "a   b   c")
challenge7Better(input: "    a")
challenge7Better(input: "abc")
