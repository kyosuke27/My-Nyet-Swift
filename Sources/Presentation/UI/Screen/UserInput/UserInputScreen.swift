import Foundation
import os

struct UserInputScreen:BaseView{
    let viewModel:UserInputViewModel
    let terminalInputChar:TerminalInputInterface
    let ansiiInput:ANSIInterface
    
    init(viewModel: UserInputViewModel, terminalInputChar: TerminalInputInterface, ansiiInput: ANSIInterface) {
        self.viewModel = viewModel
        self.terminalInputChar = terminalInputChar
        self.ansiiInput = ansiiInput
    }
    
    func render() {
        print("ようこそマイNyetゲームへ")
        print("あなたの名前を教えてください > ",terminator: "")
        // 入力コンポーネントを呼ぶ
        viewModel.inputPlayerName(name: readLine()!)
        UserInputConfirm(state: viewModel.state).render()

    }
    
}

