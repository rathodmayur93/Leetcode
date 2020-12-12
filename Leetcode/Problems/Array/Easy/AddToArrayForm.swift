//
//  AddToArrayForm.swift
//  Leetcode
//
//  Created by ds-mayur on 09/12/2020.
// problem: https://leetcode.com/problems/add-to-array-form-of-integer/submissions/
/*
 For a non-negative integer X, the array-form of X is an array of its digits in left to right order.  For example, if X = 1231, then the
 array form is [1,2,3,1].
 Given the array-form A of a non-negative integer X, return the array-form of the integer X+K.
 
 Example 1:
 Input: A = [1,2,0,0], K = 34
 Output: [1,2,3,4]
 Explanation: 1200 + 34 = 1234
 
 Example 2:
 Input: A = [2,7,4], K = 181
 Output: [4,5,5]
 Explanation: 274 + 181 = 455
 
 Example 3:
 Input: A = [2,1,5], K = 806
 Output: [1,0,2,1]
 Explanation: 215 + 806 = 1021

 Example 4:
 Input: A = [9,9,9,9,9,9,9,9,9,9], K = 1
 Output: [1,0,0,0,0,0,0,0,0,0,0]
 Explanation: 9999999999 + 1 = 10000000000
 
**Solution**
 Runtime: 216 ms, faster than 100.00% of Swift online submissions for Add to Array-Form of Integer.
 Memory Usage: 15 MB, less than 71.70% of Swift online submissions for Add to Array-Form of Integer.
 */

import Foundation

struct AddToArrayForm {
    func addToArrayForm(_ A: [Int], _ K: Int) {
        
        var add : Int = K
        var carry = 0
        var index = (A.count - 1)
        var result = A
        
        while (add > 0) {
            let kMod = add % 10
            
            if(index > -1){
                var sum = A[index] + kMod + carry
                
                if(carry > 0){
                    carry = 0
                }
                if(sum > 9){
                    carry = sum / 10
                    sum = sum % 10
                }
                result[index] = sum
                add = add / 10
                index -= 1
            }else{
                var sum = kMod + carry
                
                if(carry > 0){
                    carry = 0
                }
                
                if(sum > 9){
                    carry = sum / 10
                    sum = sum % 10
                }
                result.insert(sum, at: 0)
                add = add / 10
            }
        }
        
        while(carry > 0 && index > -1){
            
            let kMod = add % 10
            
            if(index > -1){
                var sum = A[index] + kMod + carry
                
                if(carry > 0){
                    carry = 0
                }
                if(sum > 9){
                    carry = sum / 10
                    sum = sum % 10
                }
                result[index] = sum
                add = add / 10
                index -= 1
            }
        }
        
        if(carry > 0){
            result.insert(carry, at: 0)
        }
        
        print(result)
    }
}
