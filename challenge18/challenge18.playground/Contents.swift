import Foundation

func challenge18(number: Int, power: Int) -> Int {
  if power == 0 {
    return 1
  }
  var answer = 1
  for _ in 1...power {
    answer *= number
  }
  
  return answer
}

challenge18(number: 4, power: 3)
challenge18(number: 2, power: 8)
