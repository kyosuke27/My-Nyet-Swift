import Foundation
import os

func userInputView(viewModel:UserInputViewModel,terminaInputChar:InputSource){
    // let UserInputViewModel = UserInputViewModel()
    // UserInput
    print("ようこそマイNyetゲームへ")
    print("あなたの名前を教えてください > ",terminator: "")
    // 入力コンポーネントを呼ぶ
    viewModel.inputPlayerName(name: readLine()!)
    createScreen()
    PlayerInfo(player: Player(playerName: viewModel.state.player.playerName), life: 8).playerInfo()
    
    // Create Stage
    UserMoveInput(input: terminaInputChar).userInputArea()
    // ViewModelの値を用いてViewへ変化させる
}
