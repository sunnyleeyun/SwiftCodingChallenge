import Foundation

func challenge12(input: String) -> String {
  let inputSplit = input.components(separatedBy: " ")
  guard let firstInput = inputSplit.first else {
    return ""
  }
  
  var ans: String = firstInput
  for i in 1..<inputSplit.count {
    let word = inputSplit[i]
    while !word.hasPrefix(ans) && !(ans.count == 0) {
       ans.removeLast()
    }
  }
  return ans
}

challenge12(input: "swift switch swill swim")
challenge12(input: "flip flap flop")
