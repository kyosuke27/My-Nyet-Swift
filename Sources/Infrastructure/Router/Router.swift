// このファイル内でナビゲーションを実装する
// RouteTypeを選択肢てRouteを行うと次へ遷移することが可能
import Foundation

final class Router: RouterInterface {
    var screen: RouteType = RouteType.exit
    let terminalInput: TerminalInputInterface = TerminalInput()
    let ansiiOperate: ANSIIOperateInterface = ANSIIOperate()
    let gameState: GameState = GameState(playerPosition: 0)
    let playerUpdatePosition: PlayerUpdatePositionUseCase = PlayerUpdatePositionInteractor()

    func start() {
        screen = .userInput(UserInputState(player: Player(playerName: "")))
        loop()
    }

    func loop() {
        var view: BaseView
        while true {
            switch screen {
            case .userInput(let userInputState):
                let vm = UserInputViewModel(state: userInputState)
                // ANSIOperate -> Infara層なので問題ない
                view = UserInputScreen(viewModel: vm, terminalInput: terminalInput, ansiiInput: ansiiOperate, router: self)
                view.render()
            case .game:
                let vm = GameViewModel(gameState: gameState, playerUpdatePositionUseCase: playerUpdatePosition)
                // ANSIOperate -> Infara層なので問題ない
                view = GameScreen(viewModel: vm, router: self, ansiiOperate: ansiiOperate,
                                  terminalInput:
                                    terminalInput)
                view.render()
                return
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
            screen = RouteType.userInput(UserInputState(player: Player(playerName: "")))
        case .BattleScreen:
            screen = RouteType.battle
        case .exit:
            screen = .exit
        }
    }
}
