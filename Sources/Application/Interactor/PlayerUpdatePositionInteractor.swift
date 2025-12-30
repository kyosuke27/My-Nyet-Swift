//
//  File.swift
//  My-Nyet-Swift
//
//  Created by kyosuke on 2025/12/30.
//

import Foundation
struct PlayerUpdatePositionInteractor: PlayerUpdatePositionUseCase {
    func execute(gameState: GameState, playerAddMount: Int) -> GameState {
        let pPos = gameState.playerPosition
        print("pPos : \(pPos)")
        print("playerAddMount : \(playerAddMount)")
        return GameState(playerPosition: pPos+playerAddMount)
    }

}
