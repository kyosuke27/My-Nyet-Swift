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
        case let .changePlayerPos(position):
            changePlayerPosition(position: position)
        case .exitGame:
            //                exit(0)
            onRoute?(NavigationType.exit)

        }
    }

    // Upate Player Position
    // GameStateのpositionはviewModel内部で直接操作しない
    func changePlayerPosition(position: Int) {
        gameState = playerUpdatePositionUseCase.execute(gameState: gameState, playerAddMount: position)
    }

}

enum GameEvent {
    case changePlayerPos(position: Int)
    case exitGame
}
