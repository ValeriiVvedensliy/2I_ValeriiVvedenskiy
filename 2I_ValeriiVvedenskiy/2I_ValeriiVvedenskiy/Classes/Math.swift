import Foundation


class Math: MathLogick {
    
    func isEvenNumber(number: Int) -> Bool {
       number % 2 == 0
    }
    
    func isDivNumberWithoutReminder(numder: Int) -> Bool {
       numder % 3 == 0
    }
}
