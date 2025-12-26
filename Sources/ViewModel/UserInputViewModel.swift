import Foundation

// UserInput画面での入力を受け付ける
class UserInputViewModel {
    var state: UserInputState
    
    init(state: UserInputState) {
        self.state = state
    }
    
    func inputPlayerName(name: String) {
        self.state.player.playerName = name
    }
   
    func onEvent(event: UserInputEvent) {
        switch event {
        case .confirmOk: confirmOk()
        case .confirmNo: confirmNo()
        }
    }
    func confirmOk() {
        print("confirm OK")
    }
    func confirmNo() {
        print("confirm NO")
    }
}

enum UserInputEvent {
    case confirmOk
    case confirmNo
}
