//
//  File.swift
//  My-Nyet-Swift
//
//  Created by kyosuke on 2025/12/24.
//

import Foundation
enum TerminalColorType {
    case reset
    case blue
    case red
    case green
    case pink
}

struct ANSITerminalColor {
    func write(_ text: String, style: TerminalColorType) -> String {
        return code(for: style) + text + "\u{1B}[0m"
    }
    
    private func code(for style: TerminalColorType) -> String {
        switch style {
        case .reset: return  "\u{001B}[0m"
        case .blue: return  "\u{001B}[34m"
        case .red: return  "\u{001B}[31m"
        case .green: return  "\u{001B}[32m"
        case .pink: return  "\u{001B}[35m"
        }
    }
}
