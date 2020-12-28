//
//  ReverseString.swift
//  Leetcode
//
//  Created by ds-mayur on 23/12/2020.
// problem: https://leetcode.com/problems/reverse-string/submissions/
/**
 Write a function that reverses a string. The input string is given as an array of characters char[].
 Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.
 You may assume all the characters consist of printable ascii characters.
 
 Example 1:
 Input: ["h","e","l","l","o"]
 Output: ["o","l","l","e","h"]

 Example 2:
 Input: ["H","a","n","n","a","h"]
 Output: ["h","a","n","n","a","H"]
 
**Solution**
 Runtime: 172 ms, faster than 91.53% of Swift online submissions for Reverse String.
 Memory Usage: 18.5 MB, less than 76.66% of Swift online submissions for Reverse String.
 */

import Foundation

struct ReverseString{
    
    func reverseString(_ s: inout [Character]) {
        
        var i = 0
        var j = s.count - 1
        
        while (i < j) {
            let temp = s[j]
            s[j] = s[i]
            s[i] = temp
            
            i += 1
            j -= 1
        }
    }
}
