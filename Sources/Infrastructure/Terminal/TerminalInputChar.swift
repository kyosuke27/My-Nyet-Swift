import Foundation
struct TerminalInput:TerminalInputInterface{
    func terminalInputLIne() -> String {
        return readLine()!
    }
    
    func readChar() -> Character?{
        var oldTerm = termios()
        var newTerm = termios()
        
        tcgetattr(STDIN_FILENO, &oldTerm)
        newTerm = oldTerm
        
        // カノニカルモード & エコーを無効化
        newTerm.c_lflag &= ~(UInt(ICANON | ECHO))
        tcsetattr(STDIN_FILENO, TCSANOW, &newTerm)
        
        defer {
            tcsetattr(STDIN_FILENO, TCSANOW, &oldTerm)
        }
        
        var buffer: UInt8 = 0
        let count = read(STDIN_FILENO, &buffer, 1)
        
        if count == 1 {
            return Character(UnicodeScalar(buffer))
        }
        return nil
    }
}
