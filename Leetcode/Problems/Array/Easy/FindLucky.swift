//
//  FindLucky.swift
//  Leetcode
//
//  Created by ds-mayur on 02/11/2020.
// problem: https://leetcode.com/problems/find-lucky-integer-in-an-array/
/*
 Given an array of integers arr, a lucky integer is an integer which has a frequency in the array equal to its value. Return a lucky
 integer in the array. If there are multiple lucky integers return the largest of them. If there is no lucky integer return -1.

 Example 1:
 Input: arr = [2,2,3,4]
 Output: 2
 Explanation: The only lucky number in the array is 2 because frequency[2] == 2.
 
 Example 2:
 Input: arr = [1,2,2,3,3,3]
 Output: 3
 Explanation: 1, 2 and 3 are all lucky numbers, return the largest of them.
 
 Example 3:
 Input: arr = [2,2,2,3,3]
 Output: -1
 Explanation: There are no lucky numbers in the array.
 
 Example 4:
 Input: arr = [5]
 Output: -1
 
 Example 5:
 Input: arr = [7,7,7,7,7,7,7]
 Output: 7
 */

import Foundation

struct FindLucky {
    func findLucky(_ arr: [Int]) {
        
        var dic = [Int : Int]()
        var maxValue = Int.min
        
        for n in arr{
            let isExisting = dic[n] ?? 0
            if(isExisting != 0){
                dic[n]! += 1
            }else{
                dic.updateValue(1, forKey: n)
            }
        }
        
        for (key,value) in dic{
            
            if(key == value){
                maxValue = max(maxValue, value)
            }
        }
        
        if(maxValue == Int.min){
            print(-1)
        }else{
            print(maxValue)
        }
    }
}
