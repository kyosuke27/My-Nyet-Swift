import Foundation

// User Input Text

struct UserMoveInput{
    let input:InputSource
    
    func userInputArea(){
        var playerPos:Int = 0
        let stageArea:Stage = Stage()
        print("上: w")
        print("下: s")
        print("右: d")
        print("左: a")
        while true{
            stageArea.stage(playerPos: playerPos)
            
            if let c = input.readChar() {
                if(c == "w"){
                    playerPos += 20
                }
                if(c == "d"){
                    playerPos+=1
                }
                if(c == "a"){
                    playerPos-=1
                }
                if c == "q" {
                    break
                }
                stageArea.stage(playerPos: playerPos)
                createScreen()
            }
        }
    }
    
}
