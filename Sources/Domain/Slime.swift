import Foundation

struct Slime: Monster {
    var monsterName: String
    
    func monster() -> String {
        return slime
    }

    var slime: String = """
       _^_
    _/     \\_
  _/         \\_
 /   o     o   \\
|      ___       |
|     \\___/     |
 \\             /
  \\___________/
"""
}
