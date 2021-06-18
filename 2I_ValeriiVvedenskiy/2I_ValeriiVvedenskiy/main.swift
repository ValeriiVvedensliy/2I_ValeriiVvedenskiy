import Foundation

var menuItem = 0
var array = ArrayClass.init(math: Math())

repeat {
    print("-= Menu =-")
    print("1 - Create array")
    print("2 - Delete even number in array")
    print("3 - Number Fibonachi")
    print("4 - Natural Number")
    print("0 - Exit")
    print("Enter menu item: ")
    
    menuItem = Int (readLine() ?? "") ?? 0
    print("\n")
    startProgram(menuItem)
    print("\n")
    
} while menuItem != 0


private func startProgram(_ menuItem: Int) {
    switch menuItem {
    case 1:
        array.printArray(array: array.fillDefaultArray())
        break
    case 2:
        array.printArray(array: array.deleteUsselesValue())
        break
    case 3:
        array.printArray(array: array.fillArrayFibonachiValue())
        break
    case 4:
        array.printArray(array: array.findNaturalNumber())
        break
    default:
        break
    }
}
