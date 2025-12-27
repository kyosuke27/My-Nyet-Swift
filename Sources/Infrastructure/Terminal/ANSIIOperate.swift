//
//  File.swift
//  My-Nyet-Swift
//
//  Created by kyosuke on 2025/12/23.
//

import Foundation

struct ANSIOperate: ANSIInterface {
    // fast print
    @inline(__always) func out(_ s: String) {
        FileHandle.standardOutput.write(s.data(using: .utf8)!)
    }
    // common esc
    let esc = "\u{1B}["
    // ターミナルを消去
    func clear() { out("\(esc)2J") }
    // カーソルを右上に
    func home() { out("\(esc)H") }
    // 特定位置に移動
    // row:列 col:行
    func move(row: Int, col: Int) { out("\(esc)\(row);\(col)H")}
    // カーソルを隠す
    func hideCursor() { out("\(esc)?25l") }
    // カーソルを表示する
    func showCursor() { out("\(esc)?25h") }
    // スクロール領域を rowStart〜rowEnd に設定（それ以外は固定領域になる）
    //　どの範囲をスクロール可能にするかを設定
    // ヘッダーを固定にしたい時に使用する
    func setScrollRegion(_ rowStart: Int, _ rowEnd: Int) { out("\(esc)\(rowStart);\(rowEnd)r") }
    // スクロール領域を戻す
    // 全画面がスクロールするようになる
    func resetScrollRegion() { out("\(esc)r") } // 全画面に戻す
    // 現在行を消す
    func clearLine() { out("\(esc)2K") }

}
