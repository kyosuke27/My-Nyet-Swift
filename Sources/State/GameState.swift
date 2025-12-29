import Foundation

struct GameState {
    /* Player Position range(0...400) */
    var playerPosition: Int
}

extension GameState {
    func copy(playerPosition: Int?) -> GameState {
        // return用のコピー作成
        var s =  self
        if let playerPosition {
            s.playerPosition = playerPosition
        }
        return s
    }
}
