// このファイル内でナビゲーションを実装する
// RouteTypeを選択肢てRouteを行うと次へ遷移することが可能
import Foundation

final class Router: RouterInterface {
    var screen: RouteType = RouteType.exit
    let terminalInput: TerminalInputInterface = TerminalInput()
    let ansiiOperate: ANSIIOperateInterface = ANSIIOperate()
    // State
    let gameState: GameState = GameState(playerPosition: 0)
    let userInputState: UserInputState = UserInputState(player: Player(playerName: ""))

    // UseCase
    let playerUpdatePosition: PlayerUpdatePositionUseCase = PlayerUpdatePositionInteractor()

    // ViewModel
    lazy var userInputViewModel: UserInputViewModel = UserInputViewModel(state: userInputState)
    lazy var gameViewModel: GameViewModel = GameViewModel(gameState: gameState, playerUpdatePositionUseCase: playerUpdatePosition)

    func start() {
        // initial
        screen = .userInput
        loop()
    }

    func loop() {
        var view: BaseView
        while true {
            switch screen {
            case .userInput:
                let vm = userInputViewModel
                // ANSIOperate -> Infara層なので問題ない
                view = UserInputScreen(viewModel: vm, terminalInput: terminalInput, ansiiInput: ansiiOperate, router: self)
                view.render()
            case .game:
                let vm = gameViewModel
                // ANSIOperate -> Infara層なので問題ない
                view = GameScreen(viewModel: vm, router: self, ansiiOperate: ansiiOperate,
                                  terminalInput:
                                    terminalInput)
                view.render()
            case .battle:
                view = BattleScreen()
                view.render()
            case .exit:
                exit(0)
            }
        }
    }

    func navigate(navigationType: NavigationType) {
        switch navigationType {
        case .GameScreen:
            screen = RouteType.game
        case .UserInputScreen:
            screen = RouteType.userInput
        case .BattleScreen:
            screen = RouteType.battle
        case .exit:
            screen = .exit
        }
    }
}
