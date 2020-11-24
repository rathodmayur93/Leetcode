//
//  MajorityElement.swift
//  Leetcode
//
//  Created by ds-mayur on 06/11/2020.
// problem: https://leetcode.com/problems/majority-element/

/*
 Given an array of size n, find the majority element. The majority element is the element that appears more than ⌊ n/2 ⌋ times.

 You may assume that the array is non-empty and the majority element always exist in the array.

 Example 1:

 Input: [3,2,3]
 Output: 3
 Example 2:

 Input: [2,2,1,1,1,2,2]
 Output: 2
 */

import Foundation

struct MajorityElement{
    
    func majorityElement(_ nums: [Int]) {
        
        let n = nums.count/2
        var result = 0
        
        let dic = nums.reduce(into: [:]) { (result, value) in
            result[value, default: 0] += 1
        }
        
        for (key,value) in dic where value > n{
            result = key
        }
        
        print(result)
        
    }
}
