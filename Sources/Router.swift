//
//  File.swift
//  My-Nyet-Swift
//
//  Created by kyosuke on 2025/12/19.
//

// このファイル内でナビゲーションを実装する
// RouteTypeを選択肢てRouteを行うと次へ遷移することが可能
import Foundation

struct Router {
    
    func navigate(routeType: RouteType) -> BaseView {
        return switch routeType {
        case .UserInput: UserInputScreen(viewModel: UserInputViewModel(state: UserInputState(player: Player(playerName: ""))), terminalInput: TerminalInput(), ansiiInput: ANSIOperate())
        }
    }
}

// ViewType
enum RouteType {
    case UserInput
}
