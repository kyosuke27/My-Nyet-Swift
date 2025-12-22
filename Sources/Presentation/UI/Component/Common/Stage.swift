import Foundation

struct Stage{
    let vetical = 20
    let horizon = 20
    
    func stage(playerPos:Int){
        print(createStage(playerPos: playerPos))
    }
    
    func createStage(playerPos:Int)->String{
        var stageText:String = ""
        for _ in 0..<self.vetical{
            for _ in 0..<self.horizon{
                if trimLimeBreak(text:stageText).count == playerPos{
                    stageText += "🦸"
                }else{
                    stageText += "🌱"
                }
            }
            stageText += "\n"
        }
        return stageText
    }
}
