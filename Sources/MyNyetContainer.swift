import Foundation

// Conteiner Object
class GameContaner {
    let terminalInput: TerminalInputInterface = TerminalInput()
    let ansiOperate: ANSIInterface = ANSIOperate()
    // UserInputViewModel
    let userInputViewModel = UserInputViewModel(state: UserInputState(player: Player(playerName: "")))
}
