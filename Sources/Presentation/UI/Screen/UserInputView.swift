import Foundation
import os

func userInputView(viewModel:UserInputViewModel){
    //    let UserInputViewModel = UserInputViewModel()
    // UserInput
    print("ようこそマイNyetゲームへ")
    print("あなたの名前を教えてください > ",terminator: "")
    // 入力イベント
    viewModel.inputPlayerName(name: readLine()!)
    // ViewModelで値を表示する
    
    // Terminal Clar
    print("\u{001B}[2J\u{001B}[H", terminator: "")
    
    // ViewModelの値を用いてViewへ変化させる
    showPlayerInfo(playerName: viewModel.state.player.playerName, life: 100)
    
}
