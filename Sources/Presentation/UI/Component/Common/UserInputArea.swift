import Foundation

// User Input Text

struct UserInputArea{
    static func userINputArea(){
        while true{
            if let c = readChar() {
                print("入力: \(c)")
                if c == "q" {
                    break
                }
            }
        }
    }
    
}
