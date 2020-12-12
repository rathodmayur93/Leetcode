//
//  DominantIndex.swift
//  Leetcode
//
//  Created by ds-mayur on 10/12/2020.
// problem: https://leetcode.com/problems/largest-number-at-least-twice-of-others/submissions/
/**
 In a given integer array nums, there is always exactly one largest element.Find whether the largest element in the array is at least twice as much as every other number in the array.
 If it is, return the index of the largest element, otherwise return -1.

 Example 1:
 Input: nums = [3, 6, 1, 0]
 Output: 1
 Explanation: 6 is the largest integer, and for every other number in the array x,
 6 is more than twice as big as x.  The index of value 6 is 1, so we return 1.
 
 Example 2:
 Input: nums = [1, 2, 3, 4]
 Output: -1
 Explanation: 4 isn't at least as big as twice the value of 3, so we return -1.
 
**Solution**
 Runtime: 8 ms, faster than 76.67% of Swift online submissions for Largest Number At Least Twice of Others.
 Memory Usage: 13.9 MB, less than 56.67% of Swift online submissions for Largest Number At Least Twice of Others.
 */

import Foundation

struct DominantIndex {
    func dominantIndex(_ nums: [Int]) {
        
        let max = nums.max() ?? 0
        var maxIndex = 0
        
        for i in 0..<nums.count{
            
            if(nums[i] == max){
                maxIndex = i
            }else if((nums[i] * 2) > max){
                print(-1)
            }
        }
        
        print(maxIndex)
    }
}
