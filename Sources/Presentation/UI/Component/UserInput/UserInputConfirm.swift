//
//  File.swift
//  My-Nyet-Swift
//
//  Created by kyosuke on 2025/12/24.
//

import Foundation

struct UserInputConfirm:ViewInterface{
    let state:UserInputState
    
    func render() {
        print(userInputConfirm(state: state))
    }
    
    func userInputConfirm(state:UserInputState)->String{
        let s = """
あなたの名前は[ \(state.player.playerName) ]です
よろしいですか？
1) Yes 2) No
> 
"""
        return s
    }
}
