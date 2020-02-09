import Foundation

func challenge27(filename: String, lineCount: Int) {
  let fileComponents = filename.components(separatedBy: ".")
  guard fileComponents.count == 2 else {
    return
  }
  let fileResource = fileComponents[0]
  let fileType = fileComponents[1]
  let filePath = Bundle.main.path(forResource: fileResource, ofType: fileType)
  guard let input = try? String(contentsOfFile: filePath!) else {
    return
  }
  var lines = input.components(separatedBy: "\\\n").filter { !$0.isEmpty && !$0.contains("}") }
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
