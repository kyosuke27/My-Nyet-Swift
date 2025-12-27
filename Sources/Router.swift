//
//  File.swift
//  My-Nyet-Swift
//
//  Created by kyosuke on 2025/12/19.
//

enum RouteType {
    case userInput(UserInputState)
    case game
    case exit
}

// このファイル内でナビゲーションを実装する
// RouteTypeを選択肢てRouteを行うと次へ遷移することが可能
import Foundation

final class Router: RouterInterface {
    var screen: RouteType = .exit
    
    func start() {
        screen = .userInput(UserInputState(player: Player(playerName: "")))
        loop()
    }
    
    func loop() {
        while true {
            switch screen {
            case .userInput(let userInputState):
                let vm = UserInputViewModel(state: userInputState)
                let view = UserInputScreen(viewModel: vm, terminalInput: TerminalInput(), ansiiInput: ANSIOperate(), router: self)
                view.render()
            case .game:
                print("open game screen")
                return 
            case .exit:
                print("exit game")
                return
            }
        }
    }
    
    func navigate(routeType: NavigationType) {
        switch routeType {
        case .GameScreen:
            screen = .game
        case .UserInputScreen:
            screen = .userInput(UserInputState(player: Player(playerName: "")))
        case .exit:
            screen = .exit
        }
    }
}
