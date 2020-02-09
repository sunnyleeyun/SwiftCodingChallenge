import Foundation

func challenge27(filename: String, lineCount: Int) {
  guard let input = try? String(contentsOfFile: filename) else {
    return
  }
  var lines = input.components(separatedBy: "\n")
  guard lines.count > 0 else {
    return
  }
  lines.reverse()
  for i in 0..<min(lineCount, lines.count) {
    print(lines[i])
  }
}

challenge27(filename: "sampleInput.txt", lineCount: 3)
challenge27(filename: "sampleInput.txt", lineCount: 100)
