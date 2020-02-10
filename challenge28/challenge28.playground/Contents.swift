import Foundation

func challenge28(log message: String, to logFile: String) {
  var existingLog = (try? String(contentsOfFile: logFile)) ?? ""
  let message = "\(Date())\(message)\n"
  existingLog.append(message)
  do {
    try existingLog.write(toFile: logFile, atomically: true, encoding: .utf8)
  } catch {
    print("Faild to write")
  }
}
