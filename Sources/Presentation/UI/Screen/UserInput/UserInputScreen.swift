import Foundation
import os

struct UserInputScreen: BaseView {
    let viewModel: UserInputViewModel
    let terminalInput: TerminalInputInterface
    let ansiiInput: ANSIInterface
    
    func render() {
        print("ようこそマイNyetゲームへ")
        print("あなたの名前を教えてください > ", terminator: "")
        // 入力コンポーネントを呼ぶ
        viewModel.inputPlayerName(name: readLine()!)
        // 入力確認
        UserInputConfirm(state: viewModel.state, terminalInput: terminalInput, onOk: {viewModel.onEvent(event: .confirm)}, onNo: {viewModel.onEvent(event: .confirm)}).render()
        
    }
    
}
