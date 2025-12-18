//
//  File.swift
//  My-Nyet-Swift
//
//  Created by kyosuke on 2025/12/19.
//

import Foundation

func showPlayerInfo(playerName:String,life:Int){
    // RowLimit - (|*2)
    let rowStringLimit = 30-2
    print("==============================")
    print("|\(fillSpace(limit: rowStringLimit, targetText: ("Player Name : "+playerName)))|")
    print("| HP                         |")
    print("|\(fillSpace(limit:rowStringLimit,targetText:createPlayerLife(life: life)))|")
    print("==============================")
}

