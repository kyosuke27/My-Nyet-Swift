import Foundation

enum PlayerMove {
    case Up
    case Down
    case Right
    case Left
    case End
}

struct UserMoveStage {
    // EvnetとStateでコンポーネントは管理する
    let onEvent: (GameEvent) -> Void
    let state: GameState

    // infra
    let terminalInput: TerminalInputInterface
    let ansiiOperate: ANSIIOperateInterface
    func userInputArea() {
        let stageArea: Stage = Stage()
        print("上: w")
        print("下: s")
        print("右: d")
        print("左: a")
        PlayerInfo(player: Player(playerName: "kyosuke"), life: 8).playerInfo()
        stageArea.stage(playerPos: state.playerPosition)

        if let c = terminalInput.readChar() {
            if c == "w" {
                onEvent(GameEvent.changePlayerPos(MoveDirection.Up))
            }
            if c == "d" {
                onEvent(GameEvent.changePlayerPos(MoveDirection.Right))
            }
            if c == "a" {
                onEvent(GameEvent.changePlayerPos(MoveDirection.Left))
            }
            if c == "s" {
                onEvent(GameEvent.changePlayerPos(MoveDirection.Down))
            }
            if c == "q" {
                onEvent(GameEvent.exitGame)
            }
            ansiiOperate.allClear()
        }
    }

}
