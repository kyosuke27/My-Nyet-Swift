import Foundation

func userInputView(viewModel:UserInputViewModel){
    //    let UserInputViewModel = UserInputViewModel()
    // UserInput
    print("ようこそマイNyetゲームへ")
    print("あなたの名前を教えてください > ",terminator: "")
    // Input Player Name
    let playerName:String = readLine()!
    print(playerName)
    
}
