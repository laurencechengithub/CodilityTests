import Cocoa

// 04. Counting Elements. FrogRiverOne.
// A small frog wants to get to the other side of a river. The frog is initially located on one bank of the river (position 0) and wants to get to the opposite bank (position X+1). Leaves fall from a tree onto the surface of the river.
// You are given an array A consisting of N integers representing the falling leaves. A[K] represents the position where one leaf falls at time K, measured in seconds.
// The goal is to find the earliest time when the frog can jump to the other side of the river. The frog can cross only when leaves appear at every position across the river from 1 to X (that is, we want to find the earliest moment when all the positions from 1 to X are covered by leaves). You may assume that the speed of the current in the river is negligibly small, i.e. the leaves do not change their positions once they fall in the river.
// For example, you are given integer X = 5 and array A such that:
//   A[0] = 1
//   A[1] = 3
//   A[2] = 1
//   A[3] = 4
//   A[4] = 2
//   A[5] = 3
//   A[6] = 5
//   A[7] = 4
// In second 6, a leaf falls into position 5. This is the earliest time when leaves appear in every position across the river.
// Write a function:
// class Solution { public int solution(int X, int[] A); }
// that, given a non-empty array A consisting of N integers and integer X, returns the earliest time when the frog can jump to the other side of the river.
// If the frog is never able to jump to the other side of the river, the function should return −1.
// For example, given X = 5 and array A such that:
//   A[0] = 1
//   A[1] = 3
//   A[2] = 1
//   A[3] = 4
//   A[4] = 2
//   A[5] = 3
//   A[6] = 5
//   A[7] = 4
// the function should return 6, as explained above.
// Write an efficient algorithm for the following assumptions:
// N and X are integers within the range [1..100,000];
// each element of array A is an integer within the range [1..X].


func solution( A:[Int], x:Int ) -> Int {
    
    let opposite = x + 1
    var steps = [Int]()
    var setCount = 0
    var index = 0
    
    for a in A {
        
        if steps.contains(a) == false && a <= x {
            
            steps.append(a)
            print("steps : \(steps)")
            setCount += 1 //紀錄從 0 到 x 的步數
        }
        if setCount == x {
            //當步署 等於 當初條件所給的目標時 回傳index
            return index
    
        }
        //每次不管是不是有算在 步數裡 index 均要＋1
    
        index = index + 1
    }
    
    return -1
    
}

solution(A: [3,5,5,1,3,2,4,2], x: 5)
