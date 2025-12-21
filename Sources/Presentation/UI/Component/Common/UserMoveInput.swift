import Foundation

// User Input Text

struct UserMoveInput{
    let input:InputSource
    
    func userInputArea(){
        print("上: w")
        print("下: s")
        print("右: d")
        print("左: a")
        while true{
            if let c = input.readChar() {
                if c == "q" {
                    break
                }
            }
        }
    }
    
}
