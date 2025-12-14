import Foundation

main()

func main(){
    print("ようこそマイNyetゲームへ")
    print("あなたの名前を教えてください > ",terminator: "")
    let playerName:String = readLine()!
    print(showPlayerName(name: playerName))
    
    printDash()
    //    print(green + showMonster(name: inputLine) + reset)
    terminalPrint(text: showMonster(monster:MonsterType.Slime), color: TerminalColor.red)
    printDash()
    
}

func showPlayerName(name:String,playerStringColor:TerminalColor = TerminalColor.green){
    print("""
==============================
| player name : \(colorString(text: name, color: playerStringColor))       |
==============================
"""
    )
}

func printDash(){
    print("=====================================")
}


// for terminal use
func terminalPrint(text:String,color:TerminalColor){
    print(color.rawValue+text+TerminalColor.reset.rawValue)
}

func colorString(text:String,color:TerminalColor)->String{
    return color.rawValue+text+TerminalColor.reset.rawValue
}

// MonsterName
func retMonsterName(name:String)->String{
    return "Monster Name \(colorString(text: name, color: TerminalColor.green))"
}

enum MonsterType{
    case Slime
}

func showMonster(monster:MonsterType)->String{
    switch monster {
    case .Slime:
        return """
           _^_
        _/     \\_
      _/         \\_
     /   o     o   \\
    |      ___      |
    |     \\___/     |
     \\             /
      \\___________/
"""
    }
}

// enum form text color

enum TerminalColor:String{
    case reset = "\u{001B}[0m"
    
    case blue = "\u{001B}[34m"
    case red = "\u{001B}[31m"
    case green = "\u{001B}[32m"
}
