import Foundation

func challenge20(number: Int) -> Bool {
  if number <= 3 {
    return number > 1
  } else if number % 2 == 0 || number % 3 == 0 {
    return false
  }
  var i = 5
  while i * i <= number {
    print("i is \(i), m is \(number % i)")
    if number % i == 0 {
      return false
    }
    i += 1
  }
  return true
}


challenge20(number: 11)
challenge20(number: 13)
challenge20(number: 4)
challenge20(number: 9)
challenge20(number: 83)
challenge20(number: 16777259)
