import Foundation
import os

func userInputView(viewModel:UserInputViewModel,terminaInputChar:TerminalInputInterface,ansiiInput:ANSIInterface){
    // let UserInputViewModel = UserInputViewModel()
    // UserInput
    print("ようこそマイNyetゲームへ")
    print("あなたの名前を教えてください > ",terminator: "")
    // 入力コンポーネントを呼ぶ
    viewModel.inputPlayerName(name: readLine()!)
    PlayerInfo(player: Player(playerName: viewModel.state.player.playerName), life: 8).playerInfo()
    
    // Create Stage
    UserMoveStage(input: terminaInputChar).userInputArea()
    // ViewModelの値を用いてViewへ変化させる
    ansiiInput.clear()
}
