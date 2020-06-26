//
//  main.swift
//  Challenges
//
//  Created by 李昀 on 2020/6/26.
//  Copyright © 2020 李昀. All rights reserved.
//

import Foundation

func challenge27(fileName: String, lineCount: Int) {
  guard let text = try? String(contentsOfFile: fileName) else {
    print("file can't be read.")
    return
  }
  var lines = text.components(separatedBy: "\n")
  lines.reverse()
  for i in 0..<min(lines.count, lineCount) {
    print(lines[i])
  }
}

challenge27(fileName: "sampleInput.txt", lineCount: 5)

func challenge28(log message: String, to file: String) {
  var exist = (try? String(contentsOfFile: file)) ?? ""
  exist.append("\(Date()) \(message)\n")
  do {
    try exist.write(toFile: file, atomically: true, encoding: .utf8)
  } catch {
    print("Failed to write log to file, \(error.localizedDescription)")
  }
}

challenge28(log: "If you're seeing this, you succeed!", to: "testLogFile")
challenge28(log: "Go again for another log", to: "testLogFile")

func challenge29() -> URL {
  let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
  return paths[0]
}

print(challenge29())
