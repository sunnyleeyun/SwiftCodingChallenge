import Foundation

func challenge3(string1: String, string2: String) -> Bool {
  if !(string1.count == string2.count) {
    return false
  }
  let sortChar1 = string1.sorted()
  let sortChar2 = string2.sorted()
  for i in 0..<sortChar1.count {
    if !(sortChar1[i] == sortChar2[i]) {
      return false
    }
  }
  return true
}

challenge3(string1: "abca", string2: "abca")
challenge3(string1: "abc", string2: "cba")
challenge3(string1: " a1 b2 ", string2: "b 1 a 2")
challenge3(string1: "abc", string2: "abca")
challenge3(string1: "abc", string2: "Abc")
challenge3(string1: "abc", string2: "cbAa")

func challenge3Better(string1: String, string2: String) -> Bool {
  let sortChar1 = string1.sorted()
  let sortChar2 = string2.sorted()
  return sortChar1 == sortChar2
}

challenge3Better(string1: "abca", string2: "abca")
challenge3Better(string1: "abc", string2: "cba")
challenge3Better(string1: " a1 b2 ", string2: "b 1 a 2")
challenge3Better(string1: "abc", string2: "abca")
challenge3Better(string1: "abc", string2: "Abc")
challenge3Better(string1: "abc", string2: "cbAa")
