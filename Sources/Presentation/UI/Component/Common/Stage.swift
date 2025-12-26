import Foundation

struct Stage {
    let vetical = 20
    let horizon = 20
    let player = "🦸"
    let grass = "🌱"
    let town = "🌇"

    func stage(playerPos: Int) {
        print(createStage(playerPos: playerPos))
    }
    
    func createStage(playerPos: Int) -> String {
        let stageSpace = vetical * horizon
        var cells = Array(repeating: "🌱", count: stageSpace)
        cells[playerPos] = "🦸"
        // 返却する値
        var stageArray: [String] = []
        // 5行分確保
        stageArray.reserveCapacity(vetical)
        for y in 0..<vetical {
            let start = y * horizon
            let end = start + horizon
            // 一行の文字列を作成する
            stageArray.append(cells[start..<end].joined())
        }
        return stageArray.joined(separator: "\n") + "\n" // 最後に改行追加
    }
}
