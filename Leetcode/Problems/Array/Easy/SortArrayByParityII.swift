//
//  SortArrayByParity.swift
//  Leetcode
//
//  Created by ds-mayur on 25/10/2020.
// problem: https://leetcode.com/problems/sort-array-by-parity-ii/

/*
 Given an array A of non-negative integers, half of the integers in A are odd, and half of the integers are even. Sort the array so that
 whenever A[i] is odd, i is odd; and whenever A[i] is even, i is even. You may return any answer array that satisfies this condition.
 
 Example 1:
 Input: [4,2,5,7]
 Output: [4,5,2,7]
 Explanation: [4,7,2,5], [2,5,4,7], [2,7,4,5] would also have been accepted.
 */

import Foundation

struct SortArrayByParityII{
    
    func sortArrayByParityII(_ A: [Int]) {
        
        var result = Array(repeating: 0, count: A.count)
        var evenIndex = 0
        var oddIndex = 1
        
        for i in 0..<A.count{
            if(A[i] % 2 == 0){
                result[evenIndex] = A[i]
                evenIndex += 2
            }else{
                result[oddIndex] = A[i]
                oddIndex += 2
            }
        }
        
        print(result)
    }
}
