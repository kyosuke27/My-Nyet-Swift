//
//  File.swift
//  My-Nyet-Swift
//
//  Created by kyosuke on 2025/12/21.
//

import Foundation

func fillSpace(limit: Int, targetText: String) -> String {
    let diffLimit = limit - visibleLength(targetText)
    if diffLimit<0 {
        print("difffLimt\(diffLimit)")
        return ""
    }
    var space = ""
    for _ in 0..<diffLimit {
        space+=" "
    }
    return targetText + space
}

func trimLimeBreak(text: String) -> String {
    // debug
    return text.trimmingCharacters(in: CharacterSet(charactersIn: "\n"))
}

func clearScreen() {
    print("\u{001B}[2J\u{001B}[H", terminator: "")
}
