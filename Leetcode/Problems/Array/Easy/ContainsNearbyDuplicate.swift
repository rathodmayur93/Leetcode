//
//  ContainsNearbyDuplicate.swift
//  Leetcode
//
//  Created by ds-mayur on 16/12/2020.
// problem: https://leetcode.com/problems/contains-duplicate-ii/submissions/
/**
 Given an array of integers and an integer k, find out whether there are two distinct indices i and j in the array such that nums[i]
 nums[j] and the absolute difference between i and j is at most k.
 
 Example 1:
 Input: nums = [1,2,3,1], k = 3
 Output: true
 
 Example 2:
 Input: nums = [1,0,1,1], k = 1
 Output: true
 
 Example 3:
 Input: nums = [1,2,3,1,2,3], k = 2
 Output: false

**Solution**
 Runtime: 96 ms, faster than 96.36% of Swift online submissions for Contains Duplicate II.
 Memory Usage: 18.6 MB, less than 23.64% of Swift online submissions for Contains Duplicate II.
 */

import Foundation

struct ContainsNearbyDuplicate{
    
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) {
        
        
        var dic = [Int : Int]()
        for i in 0..<nums.count{
            if(dic[nums[i]] != nil){
                if(abs(i - (dic[nums[i]] ?? 0)) <= k){
                    print(true)
                }else{
                    dic[nums[i]] = i
                }
            }else{
                dic[nums[i], default: 0] = i
            }
        }
        
        /*
        if(nums.count <= 1){
            print(false)
        }
        
        if(nums.count == 2){
            if(nums[0] == nums[1]){
                print (true)
            }
        }
        let windowCount = (nums.count - k) <= 0 ? 0 : (nums.count - k)
        
        for i in 0..<windowCount{
            var dic = [Int : Int]()
            let upperBound = (i + k) >= nums.count ? (nums.count - 1) : (i + k)
            let subArr = nums[i...upperBound]
            dic = subArr.reduce(into: [:]) { (dict, value) in
                dict[value, default: 0] += 1
            }
            
            for (_, value) in dic where value > 1{
                print(true)
            }
        }
        */
        /*
        for i in 0...((nums.count - k) < 0 ? 0 : (nums.count - k)){
            var dic = [Int : Int]()
            let upperBound = (i + k) > nums.count ? (nums.count - 1) : (i + k)
            let subArr = nums[i...upperBound]
            dic = subArr.reduce(into: [:]) { (dict, value) in
                dict[value, default: 0] += 1
            }
            
            for (_, value) in dic where value > 1{
                print(true)
            }
        }
        */
        /*
        while (i < j) {
            
            if(nums[i] == nums[j]){
                let diff = abs(j - i)
                if(diff <= k){
                    print(true)
                }
                
                i += 1
            }else{
                j += 1
                
                if(j > (nums.count - 1)){
                    j = nums.count - 1
                    i += 1
                }
            }
        }
        */
        print(false)
        
    }
}
