import Cocoa

func solution(A: [Int], K:Int) -> [Int] {
    
    let theArray = A
    let targetShift = K
    var realshift = 0
    var result = [Int]()
    
    if targetShift >= theArray.count {
        let count = theArray.count
        let a = targetShift.quotientAndRemainder(dividingBy: count)
        realshift = a.remainder
    } else {
        //shift < theArray.count
        realshift = targetShift
    }
    
    var over = [Int]()
    var notOver = [Int]()

    for i in 0..<theArray.count {
         // 0,1,2,3,4
        
        print(index)
        let num = theArray[i]
        if i + realshift < theArray.count {
            notOver.append(num)
        } else {
            over.append(num)
        }
        result = over + notOver
    }
    
    return result
}

solution(A: [2,5,8,0,4,6], K: 10)
