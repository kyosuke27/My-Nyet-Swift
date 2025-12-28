import Foundation
import os

struct UserInputScreen: BaseView {
    let viewModel: UserInputViewModel
    let terminalInput: TerminalInputInterface
    let ansiiInput: ANSIIOperateInterface
    let router: RouterInterface

    init(viewModel: UserInputViewModel, terminalInput: TerminalInputInterface, ansiiInput: ANSIIOperateInterface, router: RouterInterface) {
        self.viewModel = viewModel
        self.terminalInput = terminalInput
        self.ansiiInput = ansiiInput
        self.router = router
        self.viewModel.onRoute = { route in
            router.navigate(routeType: route)
        }

    }

    func render() {
        print("ようこそマイNyetゲームへ")
        print("あなたの名前を教えてください > ", terminator: "")
        // 入力コンポーネントを呼ぶ
        viewModel.inputPlayerName(name: readLine()!)
        // 入力確認
        UserInputConfirm(state: viewModel.state, terminalInput: terminalInput, onOk: {viewModel.onEvent(event: .confirmOk)}, onNo: {viewModel.onEvent(event: .confirmNo)}).render()
        return
    }

}
