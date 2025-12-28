import Foundation

class GameViewModel {
    let gameState: GameState
    // optional
    var onRoute: ((NavigationType) -> Void)?

    init(gameState: GameState) {
        self.gameState = gameState
    }

}
