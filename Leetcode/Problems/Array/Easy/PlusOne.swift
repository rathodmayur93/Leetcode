//
//  PlusOne.swift
//  Leetcode
//
//  Created by ds-mayur on 10/12/2020.
// problem: https://leetcode.com/problems/plus-one/
/*
 Given a non-empty array of decimal digits representing a non-negative integer, increment one to the integer.
 The digits are stored such that the most significant digit is at the head of the list, and each element in the array contains a single
 digit. You may assume the integer does not contain any leading zero, except the number 0 itself.

 Example 1:
 Input: digits = [1,2,3]
 Output: [1,2,4]
 Explanation: The array represents the integer 123.
 
 Example 2:
 Input: digits = [4,3,2,1]
 Output: [4,3,2,2]
 Explanation: The array represents the integer 4321.
 
 Example 3:
 Input: digits = [0]
 Output: [1]
 
 **Solution**
 Runtime: 4 ms, faster than 90.33% of Swift online submissions for Plus One.
 Memory Usage: 14.4 MB, less than 24.47% of Swift online submissions for Plus One.
 */

import Foundation

struct PlusOne{
    
    func plusOne(_ digits: [Int]) {
        
        var carry = 0
        var result = digits
        
        for i in (0..<(digits.count)).reversed() {
            
            var sum = 0
            if(i == (digits.count - 1)){
                sum = digits[i] + 1 + carry
            }else{
                sum = digits[i] + carry
            }
            
            if(carry > 0){
                carry = 0
            }
            
            if(sum > 9){
                carry = sum/10
                sum = sum % 10
            }
            
            result[i] = sum
        }
        
        if(carry > 0){
            result.insert(carry, at: 0)
        }
        
        print(result)
    }
}
