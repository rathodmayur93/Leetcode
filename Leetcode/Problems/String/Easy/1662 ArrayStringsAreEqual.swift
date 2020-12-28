//
//  1662 ArrayStringsAreEqual.swift
//  Leetcode
//
//  Created by ds-mayur on 23/12/2020.
// problem : https://leetcode.com/problems/check-if-two-string-arrays-are-equivalent/submissions/
/**
 Given two string arrays word1 and word2, return true if the two arrays represent the same string, and false otherwise.
 A string is represented by an array if the array elements concatenated in order forms the string.

 Example 1:

 Input: word1 = ["ab", "c"], word2 = ["a", "bc"]
 Output: true
 Explanation:
 word1 represents string "ab" + "c" -> "abc"
 word2 represents string "a" + "bc" -> "abc"
 The strings are the same, so return true.
 
 Example 2:
 Input: word1 = ["a", "cb"], word2 = ["ab", "c"]
 Output: false
 
 Example 3:
 Input: word1  = ["abc", "d", "defg"], word2 = ["abcddefg"]
 Output: true
 
**Solutiono**
 Runtime: 8 ms, faster than 86.82% of Swift online submissions for Check If Two String Arrays are Equivalent.
 Memory Usage: 14.8 MB, less than 10.08% of Swift online submissions for Check If Two String Arrays are Equivalent.
 */

import Foundation

struct ArrayStringsAreEqual{
    func arrayStringsAreEqual(_ word1: [String], _ word2: [String]) {
            
        var str1 = ""
        var str2 = ""
        
        for word in word1{
            str1.append(word)
        }
        
        for word in word2{
            str2.append(word)
        }
        
        print(str1 == str2)
        
    }
}

