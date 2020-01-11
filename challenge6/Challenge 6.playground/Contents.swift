import Foundation

func challenge6(string: String) -> String {
  var ans = Array(string)
  var collected: [String.Element] = []
  var removedCount = 0
  let strings = Array(string)
  for i in 0..<strings.count {
    if !collected.contains(strings[i]) {
      collected.append(strings[i])
    } else {
      ans.remove(at: i - removedCount)
      removedCount += 1
    }
  }
  return String(ans)
}

challenge6(string: "wombat")
challenge6(string: "hello")
challenge6(string: "Mississippi")

// What was I thinking? Stupid move but kinda mathmatically crazy omg.
func challenge6FixOrigin(string: String) -> String {
  var ans: [String.Element] = []
  let strings = Array(string)
  for i in 0..<strings.count {
    if !ans.contains(strings[i]) {
      ans.append(strings[i])
    }
  }
  return String(ans)
}

challenge6FixOrigin(string: "wombat")
challenge6FixOrigin(string: "hello")
challenge6FixOrigin(string: "Mississippi")
