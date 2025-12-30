import Foundation

// plyar position update

protocol PlayerUpdatePositionUseCase {
    func execute(gameState: GameState, playerAddMount: Int) -> GameState
}
