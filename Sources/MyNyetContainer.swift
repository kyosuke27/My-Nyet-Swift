import Foundation

// Conteiner Object
class GameContaner{
    let terminalInput: InputSource = TerminalInputChar()
    let ansiiOpe: ANSIInterface = ANSIOperate()
    // UserInputViewModel
    let userInputViewModel = UserInputViewModel(state: UserInputState(player: Player(playerName: "")))
}
