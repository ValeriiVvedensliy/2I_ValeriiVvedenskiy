import Foundation


class ArrayClass {
    private var math: MathLogick!
    
    init(math: MathLogick) {
        self.math = math
    }
    
    public func fillDefaultArray() -> [Int] {
        var value = 0
        var array = [Int]()
        while value < 100 {
            array.append(value)
            value += 1
        }
        return array
    }
    
    public func deleteUsselesValue() -> [Int] {
        let array = fillDefaultArray()
        var arr = [Int]()
        for value in array {
            if !(math.isEvenNumber(number: value) || math.isDivNumberWithoutReminder(numder: value)) {
                arr.append(value)
            }
        }
        
        return arr
    }
    
    public func fillArrayFibonachiValue() -> [Int] {
        let array = fillDefaultArray()
        var arrayFibonachi: [Int] = []
        (2...50).forEach { index in
            arrayFibonachi.append(array[index - 1] + array[index + 2])
        }
        
        return arrayFibonachi
    }
    
    public func findNaturalNumber() -> [Int] {
        let array: [Int] = Array(2...100)
        var pArray: [Int] = []
        var tmpArray = array
            while let newP = tmpArray.first {
                pArray.append(newP)
                tmpArray = tmpArray.filter { $0 % newP != 0 }
            }
        
        return pArray
    }
    
    public func printArray(array: [Int]) {
        print(array)
    }
}
