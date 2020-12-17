//
//  SummaryRanges.swift
//  Leetcode
//
//  Created by ds-mayur on 16/12/2020.
// problem: https://leetcode.com/problems/summary-ranges/submissions/
/**
 You are given a sorted unique integer array nums.

 Return the smallest sorted list of ranges that cover all the numbers in the array exactly. That is, each element of nums is covered by exactly one of the ranges, and there is no integer x such that x is in one of the ranges but not in nums.

 Each range [a,b] in the list should be output as:

 "a->b" if a != b
 "a" if a == b
  

 Example 1:

 Input: nums = [0,1,2,4,5,7]
 Output: ["0->2","4->5","7"]
 Explanation: The ranges are:
 [0,2] --> "0->2"
 [4,5] --> "4->5"
 [7,7] --> "7"
 Example 2:

 Input: nums = [0,2,3,4,6,8,9]
 Output: ["0","2->4","6","8->9"]
 Explanation: The ranges are:
 [0,0] --> "0"
 [2,4] --> "2->4"
 [6,6] --> "6"
 [8,9] --> "8->9"
 Example 3:

 Input: nums = []
 Output: []
 Example 4:

 Input: nums = [-1]
 Output: ["-1"]
 Example 5:

 Input: nums = [0]
 Output: ["0"]
 
**Solution**
 Runtime: 4 ms, faster than 36.62% of Swift online submissions for Summary Ranges.
 Memory Usage: 13.9 MB, less than 59.86% of Swift online submissions for Summary Ranges.
 */

import Foundation

struct SummaryRanges{
    
    func summaryRanges(_ nums: [Int]) {
        
        var result = [String]()
        
        if(nums.count == 0){
            print(result)
        }
        
        if(nums.count == 1){
            result.append(String(describing: nums[0]))
        }
        
        var isMinSet = false
        var min = Int.min
        var max = Int.min
            
        for i in 1..<nums.count{
            
            let diff = nums[i] - nums[i - 1]
            
            if(diff > 1){
                
                if(min == Int.min && max == Int.min){
                    result.append(String(describing: nums[i - 1]))
                }else {
                    result.append("\(min)->\(max)")
                }
                
                isMinSet = false
                min = Int.min
                max = Int.min
                
            }else if(diff == 1){
                if(!isMinSet){
                    min = nums[i - 1]
                    isMinSet = true
                }
                max = nums[i]
            }
        }
        
        if(min != Int.min && max != Int.min){
            result.append("\(min)->\(max)")
        }else{
            result.append(String(describing: nums[nums.count - 1]))
        }
        
        print(result)
    }
}
