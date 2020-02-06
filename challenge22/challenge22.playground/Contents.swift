import Foundation

func challenge22(number: UInt) -> UInt {
  var ans: UInt = number
  let paddedBinary = pad(with: String(number, radix: 2))
  let revNumBinary = String(paddedBinary.reversed())
  ans = strtoul(revNumBinary, nil, 2)
  return ans
}
func pad(with string: String) -> String {
  var padded = string
  for _ in 0..<(8 - string.count) {
    padded = "0" + padded
  }
  return padded
}
challenge22(number: 32)
challenge22(number: 4)
challenge22(number: 41)
challenge22(number: 148)
