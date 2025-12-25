import Foundation

// UserInput画面での入力を受け付ける
class UserInputViewModel{
    var state:UserInputState
    
    init(state: UserInputState) {
        self.state = state
    }
    
    func inputPlayerName(name:String){
        self.state.player.playerName = name
    }
    
    func onEvent(event:UserInputEvent){
        switch event{
            case .confirm: confirmUserInput()
        }
    }
    func confirmUserInput(){
        print("confirmUserInput")
    }
}

enum UserInputEvent{
    case confirm
}

