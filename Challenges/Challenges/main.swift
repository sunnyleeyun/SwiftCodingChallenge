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

func challenge30(with directory: String) -> [String] {
  let fm = FileManager.default
  let dirUrl = URL(fileURLWithPath: directory)
  guard let files = try? fm.contentsOfDirectory(at: dirUrl, includingPropertiesForKeys: nil) else {
    return []
  }
  
  var j = [String]()
  for file in files {
    if file.pathExtension == "jpg" || file.pathExtension == "jpeg" {
      guard let attributes = try? fm.attributesOfItem(atPath: file.path),
            let creation = attributes[.creationDate] as? Date else {
        continue
      }
      if creation > Date(timeIntervalSinceNow: -60 * 60 * 48) {
        j.append(file.lastPathComponent)
      }
      
    }
  }
  return j
  
}

func challenge31(source: String, destination: String) -> Bool {
  let fm = FileManager.default
  var isDirectory: ObjCBool = false
  
  guard fm.fileExists(atPath: source, isDirectory: &isDirectory) || isDirectory.boolValue == false else {
    return false
  }
  
  let sourceUrl = URL(fileURLWithPath: source)
  let destinationUrl = URL(fileURLWithPath: destination)
  
  do {
    try fm.copyItem(at: sourceUrl, to: destinationUrl)
  } catch {
    print("failed copy with error: \(error.localizedDescription)")
    return false
  }
  return true
  
}
