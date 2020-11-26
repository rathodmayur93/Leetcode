//
//  FIndKthPositive.swift
//  Leetcode
//
//  Created by ds-mayur on 26/11/2020.
// problem: https://leetcode.com/problems/kth-missing-positive-number/
/**
 Given an array arr of positive integers sorted in a strictly increasing order, and an integer k.
 Find the kth positive integer that is missing from this array.

 Example 1:
 Input: arr = [2,3,4,7,11], k = 5
 Output: 9
 Explanation: The missing positive integers are [1,5,6,8,9,10,12,13,...]. The 5th missing positive integer is 9.
 
 Example 2:
 Input: arr = [1,2,3,4], k = 2
 Output: 6
 Explanation: The missing positive integers are [5,6,7,...]. The 2nd missing positive integer is 6.
 
 Solution:
 Runtime: **24 ms**, faster than **92.00%** of Swift online submissions for Kth Missing Positive Number.
 Memory Usage: **14.1 MB**, less than **60.00%** of Swift online submissions for Kth Missing Positive Number.
 */

import Foundation

struct FindKthPoitive{
    
    func findKthPositive(_ arr: [Int], _ k: Int) {
        let max = arr.max()
        var compareArr = [Int].init(repeating: 0, count: (max ?? 0) + 1)
        var counter = 0
        
        for i in 0..<arr.count{
            compareArr[arr[i]] += 1
        }
        
        for j in 0..<compareArr.count where compareArr[j] == 0{
            
            if(counter == k){
                print(j)
            }
            
            counter += 1
        }
        
        print(arr.count + k)
    }
}
