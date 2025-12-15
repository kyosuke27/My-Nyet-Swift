import Foundation

main()

func main(){
    let life = 8
    print("ようこそマイNyetゲームへ")
    print("あなたの名前を教えてください > ",terminator: "")
    let playerName:String = readLine()!
    
    showPlayerInfo(playerName: playerName,life: life)
    
}

func createPlayerLife(life:Int)->String{
    var hpString:String = ""
    var hpCount:Int = 0
    let hp = "♥"
    let notHp = "♡"
    for i in 0..<10{
        if i>=life{
            hpString=hpString+notHp
        }else{
            hpString=hpString+hp
            hpCount+=1*10
        }
    }
    return "[\(hpString)] \(hpCount) / 100"
}

func showPlayerInfo(playerName:String,life:Int){
    // RowLimit - (|*2)
    let rowStringLimit = 30-2
    print("==============================")
    print("|\(fillSpace(limit: rowStringLimit, targetText: ("Player Name : "+playerName)))|")
    print("| HP                         |")
    print("|\(fillSpace(limit:rowStringLimit,targetText:createPlayerLife(life: life)))|")
    print("==============================")
}

func fillSpace(limit:Int,targetText:String)->String{
    let diffLimit = limit - targetText.count
    var space = ""
    for _ in 0..<diffLimit{
        space+=" "
    }
    return targetText + space
}

func playerInforow(content:String){
}


func createPlayerName(name:String,playerStringColor:TerminalColor = TerminalColor.green)->String{
    return "player name : \(colorString(text: name, color: playerStringColor))"
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
