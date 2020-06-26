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
