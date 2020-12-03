//
//  CanThreePartsEqualSum.swift
//  Leetcode
//
//  Created by ds-mayur on 03/12/2020.
// problem: https://leetcode.com/problems/partition-array-into-three-parts-with-equal-sum/
/**
 Given an array A of integers, return true if and only if we can partition the array into three non-empty parts with equal sums.
 Formally, we can partition the array if we can find indexes i+1 < j with (A[0] + A[1] + ... + A[i] == A[i+1] + A[i+2] + ... + A[j-1] == A[j] + A[j-1] + ... + A[A.length - 1])

 Example 1:
 Input: A = [0,2,1,-6,6,-7,9,1,2,0,1]
 Output: true
 Explanation: 0 + 2 + 1 = -6 + 6 - 7 + 9 + 1 = 2 + 0 + 1
 
 Example 2:
 Input: A = [0,2,1,-6,6,7,9,-1,2,0,1]
 Output: false
 
 Example 3:
 Input: A = [3,3,6,5,-2,2,5,1,-9,4]
 Output: true
 Explanation: 3 + 3 = 6 = 5 - 2 + 2 + 5 + 1 - 9 + 4
 
 **Solution**
 Runtime: 400 ms, faster than 64.71% of Swift online submissions for Partition Array Into Three Parts With Equal Sum.
 Memory Usage: 16 MB, less than 94.12% of Swift online submissions for Partition Array Into Three Parts With Equal Sum.
 */

import Foundation

struct CanThreePartsEqualSum {
    
    func canThreePartsEqualSum(_ A: [Int]) {
        
        let sum = A.reduce(0, +)
        var isEqualSum = 0
        var isEqualFlag = false
        var noOfEqualpart = 0
        print(sum)
        
        if(sum % 3 == 0){
            for n in A{
                isEqualSum += n
                if(isEqualSum == (sum/3) || isEqualSum == 0){
                    isEqualSum = 0
                    isEqualFlag = true
                    noOfEqualpart += 1
                }else{
                    isEqualFlag = false
                }
            }
        }else{
            print(false)
        }
        
        if(noOfEqualpart >= 3){
            print(isEqualFlag)
        }else{
            print(false)
        }
    }
}
