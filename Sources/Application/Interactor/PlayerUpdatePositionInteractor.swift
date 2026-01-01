//
//  File.swift
//  My-Nyet-Swift
//
//  Created by kyosuke on 2025/12/30.
//

import Foundation
struct PlayerUpdatePositionInteractor: PlayerUpdatePositionUseCase {
    func execute(gameState: GameState, moveDirection: MoveDirection) -> GameState {
        let pPos = gameState.playerPosition
        print("pPos : \(pPos)")
        let move: Int
        switch moveDirection {
        case .Up:
            move = -20
        case .Down:
            move = 20
        case .Right:
            move = 1
        case .Left:
            move = -1
        }
        return GameState(playerPosition: pPos+move)
    }

}
