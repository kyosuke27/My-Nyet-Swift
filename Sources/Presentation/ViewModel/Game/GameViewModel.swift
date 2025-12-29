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
        }
    }

    // Upate Player Position
    func changePlayerPosition(position: Int) {
        gameState = gameState.copy(playerPosition: position)
    }

}

enum GameEvent {
    case changePlayerPos(position: Int)
}
