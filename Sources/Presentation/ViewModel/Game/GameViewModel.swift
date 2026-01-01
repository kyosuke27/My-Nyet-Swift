import Foundation

class GameViewModel {
    let playerUpdatePositionUseCase: PlayerUpdatePositionUseCase
    var gameState: GameState
    // optional
    var onRoute: ((NavigationType) -> Void)?

    init(gameState: GameState, playerUpdatePositionUseCase: PlayerUpdatePositionUseCase) {
        self.gameState = gameState
        self.playerUpdatePositionUseCase = playerUpdatePositionUseCase

    }

    func onEvent(gameEvent: GameEvent) {
        switch gameEvent {
        case let .changePlayerPos(moveDirection):
            changePlayerPosition(moveDirection: moveDirection)
        case .exitGame:
            // exit(0)
            onRoute?(NavigationType.exit)

        }
    }

    // Upate Player Position
    // GameStateのpositionはviewModel内部で直接操作しない
    func changePlayerPosition(moveDirection: MoveDirection) {
        print("MoveDirection : \(moveDirection)")
        gameState = playerUpdatePositionUseCase.execute(gameState: gameState, moveDirection: moveDirection)
    }

}

enum GameEvent {
    case changePlayerPos(MoveDirection)
    case exitGame
}
