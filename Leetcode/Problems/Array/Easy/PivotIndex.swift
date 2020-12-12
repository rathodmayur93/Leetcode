//
//  PivotIndex.swift
//  Leetcode
//
//  Created by ds-mayur on 09/12/2020.
// problem: https://leetcode.com/problems/find-pivot-index/
/**
 Given an array of integers nums, write a method that returns the "pivot" index of this array.
 We define the pivot index as the index where the sum of all the numbers to the left of the index is equal to the sum of all the numbers to the right of the index.
 If no such index exists, we should return -1. If there are multiple pivot indexes, you should return the left-most pivot index.

 Example 1:
 Input: nums = [1,7,3,6,5,6]
 Output: 3
 Explanation:
 The sum of the numbers to the left of index 3 (nums[3] = 6) is equal to the sum of numbers to the right of index 3.
 Also, 3 is the first index where this occurs.
 
 Example 2:
 Input: nums = [1,2,3]
 Output: -1
 Explanation:
 There is no index that satisfies the conditions in the problem statement.
 
**Solution**
 Runtime: 140 ms, faster than 74.58% of Swift online submissions for Find Pivot Index.
 Memory Usage: 14.4 MB, less than 38.98% of Swift online submissions for Find Pivot Index.
 */

import Foundation

struct PivotIndex {
    
    /*
     Runtime: 4656 ms, faster than 5.08% of Swift online submissions for Find Pivot Index.
     Memory Usage: 14.2 MB, less than 77.97% of Swift online submissions for Find Pivot Index.
     */
    func pivotIndex(_ nums: [Int]) {
        
        let index = -1
        for i in 1..<nums.count{
            
            let leftSum = findLeftSum(arr: nums, index: i)
            let rightSum = findRightSum(arr: nums, index: i)
            
            if(leftSum == rightSum){
                print(i)
            }
        }
        
        print(index)
    }
    
    func findLeftSum(arr : [Int], index : Int) -> Int {
        var sum = 0
        for i in 0..<index{
            sum += arr[i]
        }
        return sum
    }
    
    func findRightSum(arr : [Int], index : Int) -> Int{
        var sum = 0
        for i in (index + 1)..<arr.count{
            sum += arr[i]
        }
        return sum
    }
    
    //MARK:- Alternate Solution
    /**
     Runtime: 140 ms, faster than 74.58% of Swift online submissions for Find Pivot Index.
     Memory Usage: 14.4 MB, less than 38.98% of Swift online submissions for Find Pivot Index.
     */
    func pivotIndex2(_ nums : [Int]){
        
        var sum = nums.reduce(0, +)
        var leftSum = 0
        
        for i in 0..<nums.count{
            
            if(leftSum == (sum - leftSum - nums[i])){
                print(i)
            }
            leftSum += nums[i]
        }
        
        print(-1)
    }
}

