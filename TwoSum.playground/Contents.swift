import Cocoa
import XCTest


let ddd = [23:34, 44:77]
let index = ddd[1]


class TwoSum:XCTestCase {
    
    let inputs = [1,3,7,9,2]
    let expected = [3,4]
    let target = 11
    
    func calculate() {

        var result = [Int]()

        for i in 0..<inputs.count {

            let n1 = inputs[i]
            for j in 0..<inputs.count - (i + 1) {
                let n2 = inputs[i+j+1]
                if n1+n2 == target {
                    result = [n1,n2]
                }
            }

        }

        XCTAssertEqual(result, expected)
    }
    
    func calculateTwo () {
//        let inputs = [1,3,7,9,2]
        var dict = [Int:Int]()
        var result = [Int]()
        
        for i in 0..<inputs.count {
            
            let n1 = inputs[i] //值
            let seekValue = target - n1 // 11 - 值
            print("i:\(i) , n1:\(n1), seek:\(seekValue)")
            
            if let index = dict[seekValue] {
                print("index: \(index)")
                print("dictzz \(dict)")
                result = [i,index]
                print("###")
            } else {
                dict[n1] = i
//                dict.updateValue(n1, forKey: i)
                print("dict \(dict)")
                print("###")
            }
            
        }
        print("result:\(result)")
        XCTAssertEqual(result, expected)
        
    }
}
    

TwoSum.defaultTestSuite.run()




