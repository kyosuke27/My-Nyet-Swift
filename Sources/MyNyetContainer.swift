import Foundation

// Conteiner Object
class GameContaner{
    let terminalInput: InputSource = TerminalInputChar()
    // UserInputViewModel
    let userInputViewModel = UserInputViewModel(state: UserInputState(player: Player(playerName: "")))
}
