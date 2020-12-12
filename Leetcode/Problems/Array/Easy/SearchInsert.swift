//
//  SearchInsert.swift
//  Leetcode
//
//  Created by ds-mayur on 10/12/2020.
// problem: https://leetcode.com/problems/search-insert-position/
/**
 Given a sorted array of distinct integers and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.
 
 Example 1:
 Input: nums = [1,3,5,6], target = 5
 Output: 2
 
 Example 2:
 Input: nums = [1,3,5,6], target = 2
 Output: 1
 
 Example 3:
 Input: nums = [1,3,5,6], target = 7
 Output: 4
 
 Example 4:
 Input: nums = [1,3,5,6], target = 0
 Output: 0
 
 Example 5:
 Input: nums = [1], target = 0
 Output: 0
 
**Solution**
 Runtime: 28 ms, faster than 84.62% of Swift online submissions for Search Insert Position.
 Memory Usage: 14.4 MB, less than 20.36% of Swift online submissions for Search Insert 
 */

import Foundation

struct SearchInsert{
    
    func searchInsert(_ nums: [Int], _ target: Int) {
        
        for i in 0..<nums.count{
            
            if(nums[i] == target){
                print(i)
            }else if(nums[i] > target){
                print(i)
            }
        }
        
        print(nums.count)
    }
}
