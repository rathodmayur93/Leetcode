//
//  MonotonicArray.swift
//  Leetcode
//
//  Created by ds-mayur on 08/11/2020.
// problem: https://leetcode.com/problems/monotonic-array/
/*
 An array is monotonic if it is either monotone increasing or monotone decreasing. An array A is monotone increasing if for all i <= j,
 A[i] <= A[j].  An array A is monotone decreasing if for all i <= j, A[i] >= A[j]. Return true if and only if the given array A is
 monotonic.

 Example 1:
 Input: [1,2,2,3]
 Output: true

 Example 2:
 Input: [6,5,4,4]
 Output: true
 
 Example 3:
 Input: [1,3,2]
 Output: false
 
 Example 4:
 Input: [1,2,4,5]
 Output: true
 
 Example 5:
 Input: [1,1,1]
 Output: true
 */

import Foundation

struct MonotonicArray{
    
    func isMonotonic(_ A: [Int]) {
        
        if(A.count < 2){
            print(true)
        }
        var isMonotonic = false
        var isIncreasing = A[0] < A[1]
        
        for j in 0..<(A.count - 1){
            
            if(A[j] == A[j + 1]){
                continue
            }else if(A[j] < A[j + 1]){
                isIncreasing = true
                break
            }else{
                isIncreasing = false
                break
            }
        }
        
        for i in 0..<(A.count - 1){
            
            
            
            if(isIncreasing){
                if(A[i] <= A[i + 1]){
                    isMonotonic = true
                }else{
                    print(false)
                }
            }else{
                if(A[i] >= A[i + 1]){
                    isMonotonic = true
                }else{
                    print(false)
                }
            }
        }
        
        print(isMonotonic)
    }
    
    func isMonotonicSol2(_ A: [Int]) -> Bool {
            var isAscending: Bool = true
            var isDescending: Bool = true
            
            for i in 0..<A.count - 1 {
                if A[i] > A[i + 1] {
                    isAscending = false
                }
                
                 if A[i] < A[i + 1] {
                    isDescending = false
                }
            }

            return isAscending || isDescending
        }
}
