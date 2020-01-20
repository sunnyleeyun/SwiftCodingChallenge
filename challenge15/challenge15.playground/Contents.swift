import Foundation

func challenge15(input: String) -> String {
  let inputs = input.components(separatedBy: " ")
  let inputsReversed = inputs.map{ $0.reversed() }
  let inputsReversedJoined = String(inputsReversed.joined(separator: " "))
  return inputsReversedJoined
}

challenge15(input: "Swift Coding Challenges")
challenge15(input: "The quick brown fox")
