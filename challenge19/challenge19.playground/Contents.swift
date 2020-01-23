import Foundation

func challenge19(_ a: inout Int, _ b: inout Int) {
  (a, b) = (b, a)
  print("a \(a), b \(b)")
}

var a = 1
var b = 2
challenge19(&a, &b)
