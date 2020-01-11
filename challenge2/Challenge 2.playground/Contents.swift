import Foundation

func challenge2(input: String) -> Bool {
  let characters = Array(input.lowercased())
  for i in 0..<input.count {
    let j = input.count - 1 - i
    if characters[i] != characters[j] {
      return false
    }
  }
  return true
}

challenge2(input: "rotator")
challenge2(input: "Rats live on no evil star")
challenge2(input: "Never odd or even")
challenge2(input: "Hello, world")
