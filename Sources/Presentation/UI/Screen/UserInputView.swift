import Foundation
import os

func userInputView(viewModel:UserInputViewModel,terminaInputChar:InputSource){
    // let UserInputViewModel = UserInputViewModel()
    // UserInput
    print("ようこそマイNyetゲームへ")
    print("あなたの名前を教えてください > ",terminator: "")
    // 入力コンポーネントを呼ぶ
    viewModel.inputPlayerName(name: readLine()!)
    print("termainInputChar")
    print("\u{001B}[2J\u{001B}[H", terminator: "")
    PlayerInfo(player: Player(playerName: viewModel.state.player.playerName), life: 8).playerInfo()
    
    Stage(player: 0).stage()
    UserMoveInput(input: terminaInputChar).userInputArea()
    // ViewModelの値を用いてViewへ変化させる
}
