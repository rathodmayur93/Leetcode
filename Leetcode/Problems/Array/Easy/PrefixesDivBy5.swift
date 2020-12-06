//
//  P\refixesDivBy5.swift
//  Leetcode
//
//  Created by ds-mayur on 06/12/2020.
//problem: https://leetcode.com/problems/binary-prefix-divisible-by-5/
/**
 Given an array A of 0s and 1s, consider N_i: the i-th subarray from A[0] to A[i] interpreted as a binary number (from most-significant-bit to least-significant-bit.)
 Return a list of booleans answer, where answer[i] is true if and only if N_i is divisible by 5.

 Example 1:
 Input: [0,1,1]
 Output: [true,false,false]
 Explanation:
 The input numbers in binary are 0, 01, 011; which are 0, 1, and 3 in base-10.  Only the first number is divisible by 5, so answer[0] is true.
 
 Example 2:
 Input: [1,1,1]
 Output: [false,false,false]
 
 Example 3:
 Input: [0,1,1,1,1,1]
 Output: [true,false,false,false,true,false]
 
 Example 4:
 Input: [1,1,1,0,1]
 Output: [false,false,false,false,false]
 
**Solution**
 Runtime: 124 ms, faster than 33.33% of Swift online submissions for Binary Prefix Divisible By 5.
 Memory Usage: 16.4 MB, less than 66.67% of Swift online submissions for Binary Prefix Divisible By 5.
 */

import Foundation
struct PrefixesDivBy5{
    
    func prefixesDivBy5(_ A: [Int]) {
        
        var result = [Bool](repeating: false, count: A.count)
        var binaryStr = ""
        var curr = 0
        for i in 0..<A.count{
            binaryStr += "\(A[i])"
            
            curr = (curr << 1)
            curr += A[i]
            result[i] = (curr % 5 == 0)
            curr = curr % 5 // prevent overflow
            
//            print(binaryStr)
//            print(Int(binaryStr, radix: 2))
//            if let decimalValue = Int(binaryStr, radix: 2) {
//                //print(decimalValue)
//                result[i] = decimalValue % 5 == 0
//            }
            
            print("===========")
        }
        
        print(result)
    }
}
