import Foundation

main()

func main(){
    
    // Input Command Line
    let inputLine = readLine()!
    
    print("inputLine : \(inputLine)")
    printDash()
    //    print(green + showMonster(name: inputLine) + reset)
    print(retMonsterName(name: inputLine))
    terminalPrint(text: showMonster(monster:MonsterType.Slime), color: TerminalColor.red)
    printDash()
    
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
