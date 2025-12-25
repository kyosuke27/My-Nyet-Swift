//
//  File.swift
//  My-Nyet-Swift
//
//  Created by kyosuke on 2025/12/24.
//

import Foundation

struct UserInputConfirm:ViewInterface{
    let state:UserInputState
    let terminalInput: TerminalInputInterface
    // ViewModelのonEventの処理をこっちで呼ぶ
    let onOk: ()->Void
    let onNo: ()->Void
    // Event
    
    func render() {
        userInputConfirm(state: state)
    }
    
    // 内部でprint実行
    func userInputConfirm(state:UserInputState){
        let s = """
あなたの名前は[ \(state.player.playerName) ]です
よろしいですか？
1) Yes 2) No
> 
"""
        print(s,terminator: "")
        // Input Terminal
        let yesOrNo = terminalInput.terminalInputLIne()
        if(yesOrNo == "1"){
            onOk()
        }else{
            onNo()
        }
    }
}
