//
//  SumOfOddLengthSubArray.swift
//  Leetcode
//
//  Created by ds-mayur on 18/10/2020.
// problem: https://leetcode.com/problems/sum-of-all-odd-length-subarrays/
/*
 Given an array of positive integers arr, calculate the sum of all possible odd-length subarrays. A subarray is a contiguous subsequence
 of the array. Return the sum of all odd-length subarrays of arr.
 
 Example 1:
 Input: arr = [1,4,2,5,3]
 Output: 58
 Explanation: The odd-length subarrays of arr and their sums are:
 [1] = 1
 [4] = 4
 [2] = 2
 [5] = 5
 [3] = 3
 [1,4,2] = 7
 [4,2,5] = 11
 [2,5,3] = 10
 [1,4,2,5,3] = 15
 If we add all these together we get 1 + 4 + 2 + 5 + 3 + 7 + 11 + 10 + 15 = 58
 
 Example 2:
 Input: arr = [1,2]
 Output: 3
 Explanation: There are only 2 subarrays of odd length, [1] and [2]. Their sum is 3.
 
 Example 3:
 Input: arr = [10,11,12]
 Output: 66
 */

import Foundation


struct SumOfOddLengthSubArray{
    
    func sumOddLengthSubarrays(_ arr: [Int]) {
        
        let n = arr.count
        var maxOdd = 0
        var sum = 0
        var sliding = 0
        
        if(n % 2 != 0){
            maxOdd = n
        }else{
            maxOdd = n - 1
        }
        
        while (maxOdd >= 1) {
            for i in stride(from: 0, to: (n - maxOdd) + 1, by: 1){
                let subArray = arr[i..<(maxOdd + sliding)]
                
                for j in 0..<subArray.count{
                    sum += subArray[i + j]
                }
                
                sliding += 1
            }
            
            sliding = 0
            maxOdd -= 2
        }
        
        print(sum)
    }
    
    func sumOddLengthSubarrays2(_ arr: [Int]){
        
    }
}
