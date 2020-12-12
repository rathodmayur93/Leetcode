//
//  MaxSubArray.swift
//  Leetcode
//
//  Created by ds-mayur on 06/12/2020.
// problem: https://leetcode.com/problems/maximum-subarray/submissions/
/**
 Given an integer array nums, find the contiguous subarray (containing at least one number) which has the largest sum and return its sum.
 Follow up: If you have figured out the O(n) solution, try coding another solution using the divide and conquer approach, which is more subtle.

 Example 1:
 Input: nums = [-2,1,-3,4,-1,2,1,-5,4]
 Output: 6
 Explanation: [4,-1,2,1] has the largest sum = 6.
 
 Example 2:
 Input: nums = [1]
 Output: 1
 
 Example 3:
 Input: nums = [0]
 Output: 0

 Example 4:
 Input: nums = [-1]
 Output: -1
 
 Example 5:
 Input: nums = [-2147483647]
 Output: -2147483647
 
**Solution**
 Runtime: 24 ms, faster than 100.00% of Swift online submissions for Maximum Subarray.
 Memory Usage: 14.4 MB, less than 23.19% of Swift online submissions for Maximum Subarray.
 */

import Foundation

struct MaxSubArrayRev {
    
    func maxSubArray(_ nums: [Int]) {
    
        /*
        var maxSum = Int.min
        for i in 0..<nums.count{
            var sum = 0
            for j in i..<nums.count{
                sum += nums[j]
                maxSum = max(maxSum, sum)
            }
        }
        */
        
        if(nums.count == 1){
            print(nums[0])
        }
        var maxSum = Int.min
        var sum = 0
        for i in 0..<nums.count{
            
            sum += nums[i]
            
            if(sum > maxSum){
                maxSum = sum
            }
            
            if(sum < 0){
                sum = 0
            }
        }
        
        print(maxSum)
    }
}
