//
//  File.swift
//  My-Nyet-Swift
//
//  Created by kyosuke on 2025/12/19.
//

// このファイル内でナビゲーションを実装する
// RouteTypeを選択肢てRouteを行うと次へ遷移することが可能
import Foundation

struct Router{
    // DIContainer
    let dIContainer:GameContaner
    
    func navigate(routeType:RouteType)->BaseView{
        return switch routeType{
        case .UserInput: UserInputScreen(viewModel: dIContainer.userInputViewModel, terminalInputChar: dIContainer.terminalInputChar, ansiiInput: dIContainer.ansiOperate)
        }
    }
}

// ViewType
enum RouteType{
    case UserInput
}
