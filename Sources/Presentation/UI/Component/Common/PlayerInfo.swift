//
//  File.swift
//  My-Nyet-Swift
//
//  Created by kyosuke on 2025/12/19.
//

import Foundation

struct PlayerInfo{
    var player:Player
    var life:Int
    
    init(player: Player, life: Int) {
        self.player = player
        self.life = life
    }
    
    func playerInfo(){
        
        // RowLimit - (|*2)
        let rowStringLimit = 30-2
        print("==============================")
        print("|\(fillSpace(limit: rowStringLimit, targetText: ("Player Name : "+self.player.playerName)))|")
        print("| HP                         |")
        print("|\(fillSpace(limit:rowStringLimit,targetText:createPlayerLife(life: self.life)))|")
        print("==============================")
    }
}


