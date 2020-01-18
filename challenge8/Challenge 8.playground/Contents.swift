import Foundation

// Peeking answer
func challenge8(input: String, rotated: String) -> Bool {
  if !(input.count == rotated.count) {
    return false
  }
  let inputDup = input + input
  return inputDup.contains(rotated)
}


challenge8(input: "abcde", rotated: "eabcd")
challenge8(input: "abcde", rotated: "cdeab")
challenge8(input: "abcde", rotated: "abced")
