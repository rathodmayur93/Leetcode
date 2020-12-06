//
//  IsOneBitCharacter.swift
//  Leetcode
//
//  Created by ds-mayur on 05/12/2020.
// problem: https://leetcode.com/problems/1-bit-and-2-bit-characters/submissions/
/**
 We have two special characters. The first character can be represented by one bit 0. The second character can be represented by two bits (10 or 11).
 Now given a string represented by several bits. Return whether the last character must be a one-bit character or not. The given string will always end with a zero.

 Example 1:
 Input:
 bits = [1, 0, 0]
 Output: True
 Explanation:
 The only way to decode it is two-bit character and one-bit character. So the last character is one-bit character.
 
 Example 2:
 Input:
 bits = [1, 1, 1, 0]
 Output: False
 Explanation:
 The only way to decode it is two-bit character and two-bit character. So the last character is NOT one-bit character.
 
**Solution**
 Runtime: 16 ms, faster than 92.31% of Swift online submissions for 1-bit and 2-bit Characters.
 Memory Usage: 14.1 MB, less than 42.31% of Swift online submissions for 1-bit and 2-bit Characters.

 */

import Foundation

struct IsOneBitCharacter {
    func isOneBitCharacter(_ bits: [Int]) {
        let n = bits.count
        var isOneBit = false
        
        var i = 0
        while(i < n){
            
            if(bits[i] == 1){
                isOneBit = false
                i += 2
            }else if(bits[i] == 0){
                isOneBit = true
                i += 1
            }
        }
        
        print(isOneBit)
    }
}
