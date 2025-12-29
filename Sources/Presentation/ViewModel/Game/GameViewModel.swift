import Foundation

class GameViewModel {
    var gameState: GameState
    // optional
    var onRoute: ((NavigationType) -> Void)?

    init(gameState: GameState) {
        self.gameState = gameState
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
        gameState = gameState.copy(playerPosition: position)
    }

}

enum GameEvent {
    case changePlayerPos(position: Int)
    case exitGame
}
