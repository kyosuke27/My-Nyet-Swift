import Foundation

main()

func main() {
    // Router
    let router = Router()
    router.start()
}

func createPlayerLife(life: Int) -> String {
    var hpString: String = ""
    var hpCount: Int = 0

    let hp: String = colorString(text: "♥", color: TerminalColor.pink)
    let notHp = "♡"

    for i in 0..<10 {
        if i>=life {
            hpString=hpString+notHp
        } else {
            hpString=hpString+hp
            hpCount+=1*10
        }
    }
    return "[\(hpString)] \(hpCount) / 100"
}

func visibleLength(_ s: String) -> Int {
    let pattern = "\u{001B}\\[[0-9;]*m"
    let regex = try! NSRegularExpression(pattern: pattern)
    let range = NSRange(s.startIndex..<s.endIndex, in: s)
    let stripped = regex.stringByReplacingMatches(in: s, range: range, withTemplate: "")
    return stripped.count
}

func playerInforow(content: String) {
}

func createPlayerName(name: String, playerStringColor: TerminalColor = TerminalColor.green) -> String {
    return "player name : \(colorString(text: name, color: playerStringColor))"
}

func printDash() {
    print("=====================================")
}

// for terminal use
func terminalPrint(text: String, color: TerminalColor) {
    print(color.rawValue+text+TerminalColor.reset.rawValue)
}

func colorString(text: String, color: TerminalColor) -> String {
    return color.rawValue+text+TerminalColor.reset.rawValue
}

// MonsterName
func retMonsterName(name: String) -> String {
    return "Monster Name \(colorString(text: name, color: TerminalColor.green))"
}

enum MonsterType {
    case Slime
}

func getMonster(monster: MonsterType) -> Monster {
    switch monster {
    case .Slime:
        return Slime(monsterName: "Slime")
    }
}

// enum form text color

enum TerminalColor: String {
    case reset = "\u{001B}[0m"

    case blue = "\u{001B}[34m"
    case red = "\u{001B}[31m"
    case green = "\u{001B}[32m"
    case pink = "\u{001B}[35m"
}
