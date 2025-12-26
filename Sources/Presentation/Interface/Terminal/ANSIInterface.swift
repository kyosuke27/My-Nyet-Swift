//
//  File.swift
//  My-Nyet-Swift
//
//  Created by kyosuke on 2025/12/24.
//

import Foundation

protocol ANSIInterface {
    // fast print
    @inline(__always) func out(_ s: String)
    // common esc
    // terminal clear
    func clear()
    func home()
    func move(row: Int, col: Int)
    func hideCursor()
    func showCursor()
    /// スクロール領域を rowStart〜rowEnd に設定（それ以外は固定領域になる）
    func setScrollRegion(_ rowStart: Int, _ rowEnd: Int)
    func resetScrollRegion()
    func clearLine()
    
}
