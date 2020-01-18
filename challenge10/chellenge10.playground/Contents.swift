import Foundation

func challenge10(input: String) -> (vowels: Int, consonants: Int) {
  let vowels: [String.Element] = ["a", "e", "i", "o", "u"]
  var ans: (vowels: Int, consonants: Int) = (vowels: 0, consonants: 0)
  for inp in input.lowercased() {
    if !inp.isLetter {
      continue
    }
    if vowels.contains(inp) {
      ans.vowels += 1
    } else {
      ans.consonants += 1
    }
  }
  return ans
}

challenge10(input: "Swift Coding Challenges")
challenge10(input: "Mississippi")
