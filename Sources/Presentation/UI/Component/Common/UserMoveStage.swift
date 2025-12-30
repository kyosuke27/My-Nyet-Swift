import Foundation

struct UserMoveStage {
    // EvnetとStateでコンポーネントは管理する
    let onEvent: (GameEvent) -> Void
    let state: GameState

    // infra
    let terminalInput: TerminalInputInterface
    let ansiiOperate: ANSIIOperateInterface

    let gameEndPosition: Int = -9999

    func userInputArea() {
        var addPlayerPos = 0
        let stageArea: Stage = Stage()
        print("上: w")
        print("下: s")
        print("右: d")
        print("左: a")
        PlayerInfo(player: Player(playerName: "kyosuke"), life: 8).playerInfo()
        stageArea.stage(playerPos: state.playerPosition)

        if let c = terminalInput.readChar() {
            if c == "w" {
                addPlayerPos = -20
            }
            if c == "d" {
                addPlayerPos = 1
            }
            if c == "a" {
                addPlayerPos = -1
            }
            if c == "s" {
                addPlayerPos = 20
            }
            if c == "q" {
                onEvent(GameEvent.changePlayerPos(position: gameEndPosition))
                return
            }
            // stateのplayerPosを更新
            onEvent(GameEvent.changePlayerPos(position: addPlayerPos))
            ansiiOperate.allClear()
        }
    }

}
