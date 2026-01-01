import Foundation

// plyar position update

protocol PlayerUpdatePositionUseCase {
    func execute(gameState: GameState, moveDirection: MoveDirection) -> GameState
}
