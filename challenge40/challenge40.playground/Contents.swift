import UIKit

func challenge40(input: [Int]) -> [Int] {
  let array = Array(1...100)
  var ans: [Int] = []
  
  for n in array {
    if !input.contains(n) {
      ans.append(n)
    }
  }
  
  return ans
}

challenge40(input: [7, 21, 26])

