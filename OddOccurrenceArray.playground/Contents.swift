import Cocoa


// A non-empty array A consisting of N integers is given. The array contains an odd number of elements, and each element of the array can be paired with another element that has the same value, except for one element that is left unpaired.
// For example, in array A such that:
//   A[0] = 9  A[1] = 3  A[2] = 9
//   A[3] = 3  A[4] = 9  A[5] = 7
//   A[6] = 9
// the elements at indexes 0 and 2 have value 9,
// the elements at indexes 1 and 3 have value 3,
// the elements at indexes 4 and 6 have value 9,
// the element at index 5 has value 7 and is unpaired.
// Write a function:
// class Solution { public int solution(int[] A); }
// that, given an array A consisting of N integers fulfilling the above conditions, returns the value of the unpaired element.
// For example, given array A such that:
//   A[0] = 9  A[1] = 3  A[2] = 9
//   A[3] = 3  A[4] = 9  A[5] = 7
//   A[6] = 9
// the function should return 7, as explained in the example above.
// Write an efficient algorithm for the following assumptions:
// N is an odd integer within the range [1..1,000,000];
// each element of array A is an integer within the range [1..1,000,000,000];
// all but one of the values in A occur an even number of times.


func solution(A:[Int]) -> Int {
    
    guard A.count > 0 else {
        return 0
    }
    
    if A.count == 1 {
        return A[0]
    }
    
    var dict = [Int:Int]()
    
    for num in A {
        if let value = dict[num] {
            //exists
            var increment = value + 1
            if increment == 2 { increment = 0 }
            dict.updateValue(increment, forKey: num)
            
        } else {
            dict[num] = 1
        }
    }
    
    let theSingleOccur = dict.max { a, b in
        a.value < b.value
    }
    
//    let theSingleOccur = dict.values.max()
    
    return theSingleOccur?.key ?? 0
    
}


solution(A: [5,5,6,6,7,7,1,2,3,5,6,7,7,7,2,4,7,5,6,1,3,4,8])

solution(A: [5])

solution(A: [])
