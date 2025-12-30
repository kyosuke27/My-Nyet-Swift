//
//  File.swift
//  My-Nyet-Swift
//
//  Created by kyosuke on 2025/12/30.
//

import Foundation

struct BattleScreen: BaseView {
    var monster: Monster = Slime(monsterName: "slime")
    func render() {
        print("Battle Screen")
        print("\(monster.monsterName)")
    }

}
