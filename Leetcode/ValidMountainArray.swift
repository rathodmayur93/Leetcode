
/*
 - Question
 Given an array A of integers, return true if and only if it is a valid mountain array.
 
 Recall that A is a mountain array if and only if:
 
 A.length >= 3
 There exists some i with 0 < i < A.length - 1 such that:
 A[0] < A[1] < ... A[i-1] < A[i]
 A[i] > A[i+1] > ... > A[A.length - 1]
 
 Example 1:
 Input: [2,1]
 Output: false
 
 Example 2:
 Input: [3,5,5]
 Output: false
 
 Example 3:
 Input: [0,3,2,1]
 Output: true
 */

import Foundation

struct ValidMountainArray {
    
    public func checkIsMountainArray(_ arr : [Int]){
        
        if(arr.count < 3){ // BASE CASE
            debugPrint("\(self.self): \(#function) line: \(#line). Invalid Array")
        }
        
        let n  = arr.count
        var mid = 0
        var isLeftMountain = true
        var isRightMountain = false
        
        for i in 0..<(n - 1){
            if(arr[i] < arr[i + 1] && isLeftMountain){
                debugPrint("\(self.self): \(#function) line: \(#line). Half Way Done")
                isLeftMountain = true
            }else if(arr[i] > arr[i + 1]){
                mid = i
                debugPrint("Mid Index \(mid)")
                debugPrint("\(self.self): \(#function) line: \(#line).  All Way Done")
                isRightMountain = true
                isLeftMountain = false
            }else{
                isRightMountain = false
                //isLeftMountain = false
                break
            }
        }
        
        /*
        for j in (mid)..<(n - 1){
            if(arr[j] > arr[j + 1]){
                debugPrint("\(self.self): \(#function) line: \(#line).  All Way Done")
                isRightMountain = true
            }else{
                isRightMountain = false
                break
            }
        }
        */
        if(isLeftMountain && isRightMountain){
            debugPrint("\(self.self): \(#function) line: \(#line). It's a mountain array")
        }else{
            debugPrint("\(self.self): \(#function) line: \(#line). It's not mountain array")
        }
        
    }
    
    public func bestSolution(_ arr : [Int]) -> Bool {
        
        let n = arr.count
        var isIncreasing = true
        
        if(n < 3){
            return false
        }
        
        for i in 0..<n{
            if isIncreasing{
                if(arr[i] > arr[i + 1]){
                    guard i != 0 else { return false}
                    isIncreasing = false
                }
                
                if(arr[i] == arr[i + 1]){
                    return false
                }
            }else{
                if(arr[i] <= arr[i + 1]){
                    return false
                }
            }
        }
        
        return !isIncreasing
    }
}
