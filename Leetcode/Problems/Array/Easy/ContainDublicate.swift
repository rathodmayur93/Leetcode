//
//  ContainDublicate.swift
//  Leetcode
//
//  Created by ds-mayur on 11/11/2020.
// problem: https://leetcode.com/problems/contains-duplicate/
/*
 Given an array of integers, find if the array contains any duplicates. Your function should return true if any value appears at least
 twice in the array, and it should return false if every element is distinct.

 Example 1:
 Input: [1,2,3,1]
 Output: true
 
 Example 2:
 Input: [1,2,3,4]
 Output: false
 
 Example 3:
 Input: [1,1,1,3,3,4,3,2,4,2]
 Output: true
 */

import Foundation

struct ContainDublicate{
    func containsDuplicate(_ nums: [Int]) {
        
        var dic = [Int : Int]()
        
        for n in nums{
            if(dic[n] != nil){
                print( true)
            }else{
                dic[n] = 1
            }
            //dic[n, default: 0] += 1
        }
        
//        for (_,value) in dic where value > 1 {
//            print(true)
//        }
        
        print(false)
    }
}
