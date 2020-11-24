//
//  FrequencySort.swift
//  Leetcode
//
//  Created by ds-mayur on 02/11/2020.
// problem: https://leetcode.com/problems/sort-array-by-increasing-frequency/submissions/
/*
 Given an array of integers nums, sort the array in increasing order based on the frequency of the values. If multiple values have the
 same frequency, sort them in decreasing order.
 
 Return the sorted array.
 Example 1:

 Input: nums = [1,1,2,2,2,3]
 Output: [3,1,1,2,2,2]
 Explanation: '3' has a frequency of 1, '1' has a frequency of 2, and '2' has a frequency of 3.
 
 Example 2:
 Input: nums = [2,3,1,3,2]
 Output: [1,3,3,2,2]
 Explanation: '2' and '3' both have a frequency of 2, so they are sorted in decreasing order.
 
 Example 3:
 Input: nums = [-1,1,-6,4,5,-6,1,4,1]
 Output: [5,-1,4,4,-6,-6,1,1,1]
 */

import Foundation

struct FrequencySort{
    
    func frequencySort(_ nums: [Int])  {
        var dic = [Int:Int]()
        var result = [Int]()
        for n in nums{
            let isExisting = dic[n] ?? 0
            if(isExisting != 0){
                dic[n]! += 1
            }else{
                dic.updateValue(1, forKey: n)
            }
        }
        
        let sortDic = dic.sorted(by: { (dic1, dic2) -> Bool in
            if(dic1.value == dic2.value){
                return dic1.key > dic2.key
            }else{
                return dic1.value < dic2.value
            }
        })
        
        for (key,value) in sortDic {
            result.append(contentsOf: [Int](repeating: key, count: value))
        }
        
        print(dic)
        print(result)
    }
}
