import Foundation

func challenge5(input: String, count: Character) -> Int {
  var total = 0
  guard let countAscii = count.asciiValue else {
    return total
  }
  let inputs = Array(input)
  for i in 0..<inputs.count {
    guard let inputIndexAscii = inputs[i].asciiValue else {
      continue
    }
    if inputIndexAscii == countAscii {
      total += 1
    }
  }
  return total
}

challenge5(input: "The rain in Spain", count: "a")
challenge5(input: "Mississippi", count: "i")
challenge5(input: "Hacking with Swift", count: "i")
