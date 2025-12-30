import Foundation

struct Slime: Monster {
    var monsterName: String

    init(monsterName: String) {
        self.monsterName = monsterName
    }

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
