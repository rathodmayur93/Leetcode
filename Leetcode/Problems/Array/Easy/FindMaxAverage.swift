//
//  FindMaxAverage.swift
//  Leetcode
//
//  Created by ds-mayur on 12/12/2020.
// problem: https://leetcode.com/problems/maximum-average-subarray-i/
/**
 Given an array consisting of n integers, find the contiguous subarray of given length k that has the maximum average value. And you need to output the maximum average value.
 Example 1:

 Input: [1,12,-5,-6,50,3], k = 4
 Output: 12.75
 Explanation: Maximum average is (12-5-6+50)/4 = 51/4 = 12.75
 
**Solution**
 Runtime: 1304 ms, faster than 5.88% of Swift online submissions for Maximum Average Subarray I.
 Memory Usage: 15.3 MB, less than 82.35% of Swift online submissions for Maximum Average Subarray I.
 */

import Foundation

struct FindMaxAverage{
    func findMaxAverage(_ nums: [Int], _ k: Int) {
        
        var max = Int.min
        var current = 0
        for i in 0 ..< nums.count {
            //Creating window
            if i < k {
                current += nums[i]
            } else { // Sliding window
                max = current > max ? current : max
                current += nums[i] - nums[i - k] //sum of next 4 numbers
            }
        }
        
        max = current > max ? current : max
        print( Double(max) / Double(k))
    }
}
