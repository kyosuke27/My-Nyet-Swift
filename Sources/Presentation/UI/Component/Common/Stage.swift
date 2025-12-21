import Foundation

struct Stage{
    let vetical = 5
    let horizon = 20
    var player:Int
    
    init(player: Int) {
        self.player = player
    }
    
    func stage(){
        print(createStage())
    }
    
    func createStage()->String{
        return """
*○******************
********************
********************
********************
********************
"""
        
    }
}
