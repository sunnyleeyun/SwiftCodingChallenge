import Foundation

func challenge25(input: Int) -> Int {
  func square(of num: Int) -> Int {
    return num * num
  }
  var ans = input / 2
  
  while !(square(of: ans) <= input && square(of: ans + 1) > input)  {
    
    if square(of: ans + 1) == input {
      return ans + 1
    }
    if square(of: ans) < input && square(of: ans + 1) < input {
      ans = ans / 2 * 3
    } else if square(of: ans) > input && square(of: ans + 1) > input {
      ans /= 2
    }
  }
  
  return ans
}

challenge25(input: 9)
challenge25(input: 16777216)
challenge25(input: 15)

func challenge25Better(input: Int) -> Int {
  guard input != 1 else {
    return 1
  }
  var lowerBound = 0
  var upperBound = input / 2 + 1
  while lowerBound + 1 < upperBound {
    let middle = lowerBound + ((upperBound - lowerBound) / 2)
    let middleSquare = middle * middle
    if middleSquare == input {
      return middle
    } else if middleSquare < input {
      lowerBound = middle
    } else {
      upperBound = middle
    }
  }
  return lowerBound
}

challenge25Better(input: 9)
challenge25Better(input: 16777216)
challenge25Better(input: 15)
