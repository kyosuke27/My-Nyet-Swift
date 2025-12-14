import Foundation

print("Hello, World!")
// Input Command Line
let inputLine = readLine()!

print("inputLine : \(inputLine)")
print(showMonster())

func showMonster()->String{
  return #"""
            ^
          _/ \_
        _/     \_
      _/         \_
     /   o     o   \
    |      ___      |
    |     \___/     |
     \             /
      \___________/

"""#
}
