import Foundation

// Conteiner Object
class GameContaner{
    let terminalInputChar: TerminalInputInterface = TerminalInputChar()
    let ansiOperate: ANSIInterface = ANSIOperate()
    // UserInputViewModel
    let userInputViewModel = UserInputViewModel(state: UserInputState(player: Player(playerName: "")))
}
