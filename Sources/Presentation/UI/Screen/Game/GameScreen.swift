import Foundation

struct GameScreen: BaseView {
    let viewModel: GameViewModel
    let router: Router
    let ansiiOperate: ANSIIOperateInterface
    let terminalInput: TerminalInputInterface

    init(viewModel: GameViewModel, router: Router, ansiiOperate: ANSIIOperateInterface, terminalInput: TerminalInputInterface) {
        self.viewModel = viewModel
        self.router = router
        self.ansiiOperate = ansiiOperate
        self.terminalInput = terminalInput
        self.viewModel.onRoute = { route in
            router.navigate(routeType: route)
        }
    }

    func render() {
        print("Game View")
        UserMoveStage(terminalInput: terminalInput,gameViewModel: viewModel ).userInputArea()
    }
}
