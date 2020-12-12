//
//  FindLengthOfLCIS.swift
//  Leetcode
//
//  Created by ds-mayur on 09/12/2020.
// problem: https://leetcode.com/problems/longest-continuous-increasing-subsequence/submissions/
/**
 Given an unsorted array of integers nums, return the length of the longest continuous increasing subsequence (i.e. subarray). The subsequence must be strictly increasing.
 A continuous increasing subsequence is defined by two indices l and r (l < r) such that it is [nums[l], nums[l + 1], ..., nums[r - 1], nums[r]] and for each l <= i < r, nums[i] < nums[i + 1].
 
 Example 1:
 Input: nums = [1,3,5,4,7]
 Output: 3
 Explanation: The longest continuous increasing subsequence is [1,3,5] with length 3.
 Even though [1,3,5,7] is an increasing subsequence, it is not continuous as elements 5 and 7 are separated by element
 4.
 
 Example 2:
 Input: nums = [2,2,2,2,2]
 Output: 1
 Explanation: The longest continuous increasing subsequence is [2] with length 1. Note that it must be strictly
 increasing.
 
 **Solution**
 Runtime: 68 ms, faster than 92.19% of Swift online submissions for Longest Continuous Increasing Subsequence.
 Memory Usage: 14.3 MB, less than 59.38% of Swift online submissions for Longest Continuous Increasing Subsequence.
 */

import Foundation

struct FindLengthOfLCIS{
    
    func findLengthOfLCIS(_ nums: [Int]) {
        
        if(nums.count == 0){
            print(0)
        }
        var longestLength = 0
        var currerntSteak = 0
        
        
        for i in 0..<(nums.count - 1){
            if(nums[i + 1] > nums[i]){
                currerntSteak += 1
            }else{
                longestLength = max(longestLength, currerntSteak)
                currerntSteak = 0
            }
        }
        
        if(currerntSteak > longestLength){
            print(currerntSteak + 1)
        }
        
        print(longestLength + 1)
    }
}
