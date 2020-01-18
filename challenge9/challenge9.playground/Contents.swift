import Foundation

// Peeked a little bit
func challenge9(input: String) -> Bool {
  var char: [String.Element] = []
  for inp in input.lowercased() {
    if !char.contains(inp) && inp.isLetter {
      char.append(inp)
    }
  }
  return char.count == 26
}

challenge9(input: "The quick brown fox jumps over the lazy dog")
challenge9(input: "The quick brown fox jumped over the lazy dog")

// With Set
func challenge9Better(input: String) -> Bool {
  let set = Set(input.lowercased())
  let letters = set.filter { $0 >= "a" && $0 <= "z" }
  return letters.count == 26
}
challenge9Better(input: "The quick brown fox jumps over the lazy dog")
challenge9Better(input: "The quick brown fox jumped over the lazy dog")
