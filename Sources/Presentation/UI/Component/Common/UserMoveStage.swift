import Foundation

// User Input Text

struct UserMoveStage {
    let terminalInput: TerminalInputInterface
    let gameViewModel: GameViewModel

    func userInputArea() {
        var playerPos: Int = 0
        let stageArea: Stage = Stage()
        print("上: w")
        print("下: s")
        print("右: d")
        print("左: a")
        while true {
            stageArea.stage(playerPos: playerPos)
            var playerPos = 0

            if let c = terminalInput.readChar() {
                if c == "w" {
                    playerPos-=20
                }
                if c == "d" {
                    playerPos+=1
                }
                if c == "a" {
                    playerPos-=1
                }
                if c == "s" {
                    playerPos+=20
                }
                if c == "q" {
                    break
                }
                // stateのplayerPosを更新
                gameViewModel.onEvent(gameEvent: .changePlayerPos(position: playerPos))
                stageArea.stage(playerPos: gameViewModel.gameState.playerPosition)
                clearScreen()
            }
        }
    }

}
