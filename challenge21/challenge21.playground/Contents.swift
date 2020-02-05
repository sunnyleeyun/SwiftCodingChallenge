import Foundation

func challenge21(number: Int) -> (nextHighest: Int?, nextLowest: Int?) {
  var ans: (nextHighest: Int?, nextLowest: Int?) = (nextHighest: nil, nextLowest: nil)
  let count = String(number, radix: 2).filter { $0 == "1" }.count
  for i in (0..<number).reversed() {
    if (String(i, radix: 2).filter { $0 == "1" }).count == count {
      ans.nextHighest = i
      break
    }
  }
  for j in (number + 1)..<Int.max {
    if (String(j, radix: 2).filter { $0 == "1" }).count == count {
      ans.nextLowest = j
      break
    }
  }
  return ans
}

challenge21(number: 12)
challenge21(number: 28)
